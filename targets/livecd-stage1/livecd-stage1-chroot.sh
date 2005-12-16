#!/bin/bash
# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo/src/catalyst/targets/livecd-stage1/livecd-stage1-chroot.sh,v 1.23 2005/12/16 19:32:31 wolf31o2 Exp $

. /tmp/chroot-functions.sh

update_env_settings

setup_myfeatures
setup_myemergeopts

# Setup the environment

export FEATURES="${clst_myfeatures}"

## START BUILD
setup_portage

# Turn off auto-use:
export USE_ORDER="env:pkg:conf:defaults"	
export USE="${clst_use}"

run_emerge "${clst_packages}"
