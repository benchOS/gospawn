# GoSpawn
[![benOSShield-Official](https://img.shields.io/badge/benOS-Native-brightgreen.svg)](https://github.com/benchOS/benOS)[![benOSShield-Utils](https://img.shields.io/badge/benOS-Utils-brightgreen.svg)](https://github.com/benchOS/benOS)[![build status](http://img.shields.io/travis/benchOS/mimg.svg?style=flat)](http://travis-ci.org/benchOS/mimg)[![JavaScript Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://standardjs.com)
[![benOSRepoHeader](https://raw.githubusercontent.com/benchOS/benchOS-design/master/repo-headers/benos-gospawn-header.png)](https://github.com/benchOS/gospawn)
<br>
Benny Component For Loading `systemd-nspawn` Into A Benny Container With benOS Server Edition, Arch Or Debian-Based Distros.



## Table of Contents

- [Background](#background)
- [Installation](#installation)
- [Usage](#usage)
- [Related Projects](#related-projects)
- [Why Decentralized Internet](#why-the-internet-must-have-a-decentralized-alternative)
- [Bench On The dWeb](#bench-on-the-dweb)
- [License](#license)
- [Copyright](#license)

## Background
Benny Component For Loading `systemd-nspawn` Into A Benny Container With benOS Server Edition, Arch Or Debian-Based Distros.

[![benOSRepoHeader](https://raw.githubusercontent.com/benchOS/benchOS-design/master/terminal-screens/gospawn.png)](https://github.com/benchOS/gospawn)


## Installation

### With NPM

```
npm install -g gospawn

```
### With YARN

```
yarn add global gospawn
```

## Usage

```sh
gospawn ./ubuntu-16.04.img --ubuntu xenial --size 4GB
```

Here is a look at the usage menu for GoSpawn below:

```
Welcome to benOS and goSpawn. Usage Instructions Are Below.
Usage: gospawn <container.img> [options]

  --force
  --size    <image-size>
  --benos  <version>
  --ubuntu  <version>
  --debian  <version>
  --arch

Usage Examples:

  gospawn --arch --size 4GB
  gospawn --ubuntu xenial --size 3GB
  gospawn --debian stable
  gospawn --benos latest

```

## Related Projects
- [benOS](https://github.com/benchOS/benOS) - benOS Decentralized Operating System
- [benny](https://github.com/benchOS/dpack-logger) - benOS Native Container Builder
- [bennyfile](https://github.com/distributedweb/bennyfile) - Build File Library For Benny Containers
- [thinbit](https://github.com/distributedweb/buffgap) - BitField Library For Benny

## Why The Internet Must Have A Decentralized Alternative
Today, the internet is more censored than ever and it's only getting worse. Our mission with the [dWeb Protocol](https://github.com/distributedweb/dweb) was to create a truly powerful P2P protocol, around [benOS](https://github.com/benchOS/benos), [dBrowser](https://github.com/benchOS/dbrowser) and many of benOS' underlying libraries to bring the most powerful P2P products to life. In the last few months, by rebuilding P2P technologies that have existed since the early 2000s, we have built a powerful suite of decentralized libraries for benOS and the Bench Network, that will only improve over time. But we also brought new ideas to life, like:

- [dDrive](https://github.com/distributedweb/ddrive)
- [dExplorer](https://github.com/distributedweb/dexplorer)
- [dDatabase](https://github.com/distributedweb/ddatabase)
- [dSites](https://github.com/distributedweb/dsites)
- [dPack](https://github.com/distributedweb/dpack)
- [benFS](https://github.com/benchOS/benfs)
- [DCDN](https://github.com/distributedweb/dcdn)
- [Rocketainer](https://github.com/distributedweb/rocketainer)
- [RocketOS](https://github.com/distributedweb/rocketos)
- [dNames](https://github.com/distributedweb/dnames)
- [P2PDNS](https://github.com/distributedweb/p2pdns)
- [dWebFS](https://github.com/distributedweb/dwebfs)
- [dWebDB](https://github.com/distributedweb/dwebdb)
- [MeteorIDE](https://github.com/distributedweb/meteorIDE)
- [Kepler](https://github.com/benchlab/kepler)
- [Neutron](https://github.com/benchlab/neutron)
- [Designate](https://github.com/benchlab/designate)
- [Nova](https://github.com/benchlab/nova)

and more! These were the protocols and libraries that we needed to create a completely decentralized operating system, where everything was distributed, protected and people were once again in control of their data. benOS is made up of over 1100+ different libraries that we are releasing on a day-by-day basis as we move them to a stable/production state. While financial support is great for this open source project, we need developers who want to be some of the first to build the `dApps` and `dSites` of the future. We have to take back what our forefathers originally designed for freedom, by making our code the law, instead of releasing weak and highly centralized applications where law cannot be applied because the code lacks the foundation to implement a legal framework for itself. Join us for a truly historic journey on the [BenchLabs Telegram](https://t.me/benchlabs). See you there.

### Bench On The dWeb
[dweb://bench.dnames.io](dweb://bench.dnames.io) // dNames Short Link
[dweb://3EDAE09848B77401445B7739CAFCE442DDE1752AED63025A1F94E6A86D7E9F04](dweb://3EDAE09848B77401445B7739CAFCE442DDE1752AED63025A1F94E6A86D7E9F04) // dWeb Key Link

In order to make the links above clickable or to view these links period, you will need [dBrowser](https://github.com/benchOS/dbrowser) (Available for Mac OSX, Linux, Windows and soon to be available on iOS/Android)

#### "The Code Is The Law" - Stan Larimer - Godfather of BitShares.

## License
[MIT](LICENSE.md)
<br><br>
[![JavaScript Style Guide](https://cdn.rawgit.com/standard/standard/master/badge.svg)](https://github.com/standard/standard)
<br>
[![forthebadge](https://forthebadge.com/images/badges/made-with-javascript.svg)](https://js.distributedwebs.org)
<br>
[![dWebShield](https://github.com/benchlab/dweb-shields/blob/master/shields/dweb-protocol-shield.svg)](https://github.com/distributedweb/dweb)

## Copyright
Copyright (c) 2018 Bench Open Systems. All rights reserved.
