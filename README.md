# Gentoo - Vagrant Box

This is a fork of [d11wtq/gentoo-packer](https://github.com/d11wtq/gentoo-packer), a project with the goal of creating a minimal stage3 installation.

This fork is **not** the most minimal stage3 installation of Gentoo possible to package into a Vagrant box file. The goal of this project is to get a gentoo box to a state in which chef recipes can be tested on it. It does not delete the portage tree and simplifies the process of obtaining the latest stage3 tarballs.

Currently, only virtualbox is supported as I do not have VMWare tools to build with.

## Getting Started

### Install Virtualbox
VirtualBox can be obtained [here](https://www.virtualbox.org/wiki/Downloads).

Via Homebrew: `brew cask install virtualbox`

### Install Vagrant
Vagrant can be obtained [here](http://www.vagrantup.com/downloads.html).

Via Homebrew: `brew cask install vagrant`

### Install Packer
Setup instructions can be found [here](https://www.packer.io/intro/getting-started/setup.html).

Via Homebrew: `brew install packer`

### Usage

```
git clone https://github.com/cjonesy/gentoo-packer.git
cd gentoo-packer
packer build virtualbox.json
vagrant box add cjonesy/gentoo gentoo-amd64-stage3-virtualbox.box
vagrant init cjonesy/gentoo
vagrant up
vagrant ssh
```

## Installed Packages
- git
- ruby
- chef
