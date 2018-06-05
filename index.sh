#!/usr/bin/env bash

set -e

GS_FORCE=false
GS_IMG=""
GS_SIZE=${GOSPAWN_GS_IMG_SIZE:-4GB}

while [ "$1" != "" ]; do
  case "$1" in
    --force)  GS_FORCE=true; shift ;;
    --size)   GS_SIZE="$2"; shift; shift ;;
    --ubuntu) UBUNTU="$2"; shift; shift ;;
    --benos)  BENOS="$2"; shift; shift ;;
    --debian) DEBIAN="$2"; shift; shift ;;
    --arch)   ARCH=true; shift; ;;
    --help)   shift; ;;
    *)        GS_IMG="$1"; shift; ;;
  esac
done

if [ "$GS_IMG" == "" ]; then
  echo "Welcome to benOS and goSpawn. Usage Instructions Are Below."
  echo "Usage: gospawn <container.img> [options]"
  echo
  echo "  --force"
  echo "  --size    <image-size>"
  echo "  --benos  <version>"
  echo "  --ubuntu  <version>"
  echo "  --debian  <version>"
  echo "  --arch"
  echo
  echo "Usage Examples:"
  echo
  echo "  gospawn --arch --size 4GB"
  echo "  gospawn --ubuntu xenial --size 3GB"
  echo "  gospawn --debian stable"
  echo "  gospawn --benos latest"
  echo
  exit 1
fi

GS_SIZE=$(($(echo $GS_SIZE | sed 's|[bB]||' | sed 's|[kK]|* 1024|' | sed 's|[mM]|* 1024 * 1024|' | sed 's|[gG]|* 1024 * 1024 * 1024|')))

required () {
  if [ "$(which $1 2>/dev/null)" == "" ]; then
    echo $1 is required
    exit 1
  fi
}

[ "$ARCH" != "" ] && required pacstrap
[ "$BENOS" != "" ] && required bengo
[ "$UBUNTU" != "" ] && required debootstrap
[ "$DEBIAN" != "" ] && required debootstrap

if $GS_FORCE; then
  rm -f "$GS_IMG"
fi

if [ -f "$GS_IMG" ]; then
  echo $GS_IMG already exists
  exit 1
fi

echo Allocating image ...
fallocate -l "$GS_SIZE" "$GS_IMG"

echo Writing partition table ...
printf 'n\n\n\n2048\n\na\nw\n' | fdisk "$GS_IMG" -u >/dev/null

echo Formatting to ext4 ...
DEV=$(sudo losetup -f --show "$GS_IMG" --offset=$((2048 * 512)))
MNT="$GS_IMG.mnt"

sudo mkfs.ext4 "$DEV" -q >/dev/null

build () {
  mkdir -p "$MNT"
  sudo mount "$DEV" "$MNT"
  "$@" || ERR=$?
  sudo umount "$MNT"
  rmdir "$MNT"
  sudo losetup -d "$DEV"
  [ "$ERR" != "" ] && rm -f "$GS_IMG" && exit $ERR
  true
}

if [ "$ARCH" != "" ]; then
  echo Installing Arch ...
  build sudo pacstrap "$MNT" base
elif [ "$UBUNTU" != "" ]; then
  echo Installing Ubuntu ...
  build sudo debootstrap "$UBUNTU" "$MNT" http://archive.ubuntu.com/ubuntu/
elif [ "$DEBIAN" != "" ]; then
  echo Installing Debian ...
  build sudo debootstrap "$DEBIAN" "$MNT" http://deb.debian.org/debian/
elif [ "$BENOS" != "" ]; then
  echo Installing benOS Server Edition ...
  build sudo bengo "$BENOS" "$MNT" http://server.benos.io/download/
else
  sudo losetup -d "$DEV"
  echo Done. Mount the first partition and install your preferred OS.
fi
