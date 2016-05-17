#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with centos_errata](#setup)
    * [What centos_errata affects](#what-centos_errata-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with centos_errata](#beginning-with-centos_errata)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

A way of installing https://github.com/wied03/centos-package-cron to a CentOS machine for Errata detection

## Module Description

tl;dr from the centos-package-cron repo:

```
Attempts to offer Apticron (Ubuntu) style package update emails and also bring security notifications to CentOS via Meier's script

What does it do?

Checks for updates using Yum's Python API and changelogs for those updates using Yum's changelog plugin
Checks security errata from CentOS mailing list via Steve Meier's XML file and reports advisories related to packages installed on your machine
Emails (or dumps to STDOUT) the above information to an address of your choosing
By default, only reminds about a given security advisory / package update once to avoid annoying you. You can change this using the --skipold false option (see -h)
Why does this exist?

yum --security is an ideal solution, but it does not work on CentOS since the updateinfo.xml file in the CentOS repository does not include RHEL style security updates (see discussion here). The options, which all depend on something like Steve's XML file (as of March 2016) that I know of are:

Use Spacewalk (see Steve site)
Generate updateinfo.xml with security information (see VM farms post)
This tool
Some of these are good options but if you don't want Spacewalk and want more Apticron/apt type features like the DB/remember piece, this might be a good option for you.
```

Basically, if you want an easy way of finding errata on CentOS, this is a quick way of doing so without having to setup Spacewalk, Katello or run your own repos.

## Setup

### What centos_errata affects

* A bunch of python packages required
* Clones the repo
* Adds a cron job to run the command
* Creates some facts to show vulnerable packages

### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled, etc.), mention it here.

### Beginning with centos_errata

The very basic steps needed for a user to get the module up and running.

If your most recent release breaks compatibility or requires particular steps for upgrading, you may wish to include an additional section here: Upgrading (For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing the fancy stuff with your module here.

## Reference

Here, list the classes, types, providers, facts, etc contained in your module. This section should include all of the under-the-hood workings of your module so people know what the module is touching on their system but don't need to mess with things. (We are working on automating this section!)

## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

Since your module is awesome, other users will want to play with it. Let them know what the ground rules for contributing are.

## Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should consider using changelog). You may also add any additional sections you feel are necessary or important to include here. Please use the `## ` header.
