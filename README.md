
# puppet-lsst_xpra

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with lsst_xpra](#setup)
    * [What lsst_xpra affects](#what-lsst_xpra-affects)
    * [Setup requirements](#setup-requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)

## Description

Puppet module for installing and configuring [Xpra](https://xpra.org/) for persistent remote display server and client for forwarding applications and desktop screens.

## Setup

### What lsst_xpra affects

The module installs Xpra packages and prerequisites.

### Setup Requirements

This module requires the following puppet modules to be installed:

  * https://forge.puppet.com/puppetlabs/stdlib

## Usage

To use load the lsst_xpra puppet module, declare this class in your manifest with `include lsst_xpra`.

## Reference

The following parameters let you extend lsst_xpra options beyond the default:

  * `lsst_xpra::packages` - Array of prerequisite packages to install via YUM
  * `lsst_xpra::yumrepo_baseurl` - String of baseurl for xpra yum repository
  * `lsst_xpra::yumrepo_gpgkey` - String of path to gpg key for xpra yum repository

## Limitations

This lsst_xpra module only supports RHEL/CentOS servers.

