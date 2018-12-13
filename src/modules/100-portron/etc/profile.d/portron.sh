#!/bin/sh

# MAC determines installation settings folder and encryption key
export MAC=`ifconfig -a | grep HWaddr | head -n1 | cut -s -d: -f3- | tr ':' '-' | cut -c 1-14`

# the internet connection checker, beacon is anything into the returned HTML
export NEO_URL_PING="http://www.google.com"
export NEO_URL_PING_BEACON="google."

# config root in home folder
export NEO_CFG_ROOT=/home/guest/.portron/conf.d/${MAC}

# config root in /var/run (active configuration)
export NEO_CFG_ROOT_VAR=/etc/conf.d

# is network configured file flag
export NEO_CFG_HASNET=${NEO_CFG_ROOT_VAR}/NET_connection

export CMD_RUN_WIZARD_INSTALL=/opt/setup/wizard-install
export CMD_WIZARD_INSTALL=/opt/setup/wizards/wizard-install
export CMD_WIZARD_CONFIG=/opt/setup/wizards/wizard-config
export CMD_NETSETUP=/opt/setup/network/setup.sh

export NEO_ISOROOT=/mnt/ISO
export NEO_SGNFILE=image.md5
export NEO_GEN_GRUBROOT=/opt/setup/wizards/lib/boot
export NEO_GEN_NETSUPPLICANT=/tmp/wpa_supplicant.conf
export SCRIPTS=/opt/scripts
export OXYGEN=/usr/share/icons/oxygen
export DWARN=${OXYGEN}/32x32/status/dialog-warning.png
export DINFO=${OXYGEN}/32x32/status/dialog-information.png
export DERROR=${OXYGEN}/32x32/status/dialog-error.png
export DOK=${OXYGEN}/32x32/actions/dialog-ok-apply.png




