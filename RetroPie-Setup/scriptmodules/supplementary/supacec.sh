#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="supacec"
rp_module_desc="Adds some much needed HDMI-CEC awareness, hopefully this package will drum up some desire for the feature and some better developers will help flesh this out. PRs are accepted! At the moment, this will send a CEC switch input command when new input devices are discovered in /dev/input i.e. turning on and pairing a controller."
rp_module_licence="GPL3"
rp_module_section="exp"
rp_module_flags="!x11"

function depends_supacec() {
    getDepends cec-utils
}

function sources_supacec() {
    gitPullOrClone "$md_build" "https://github.com/superterran/SupaCEC.git" 

}

function remove_supacec() {
    #removes the old shit and the new shit
    sudo update-rc.d -f supacec remove
    sudo /etc/init.d/supacec stop
    
    #lets compensate for our old setup
    if [ -f /etc/init.d/supacec ]; then
        sudo rm -f /etc/init.d/supacec
    fi

    if [ -f /usr/bin/supacec ]; then
        sudo rm -f /usr/bin/supacec
    fi
    
    if [ -f /usr/bin/supacec ]; then
        sudo rm -f /etc/udev/rules.d/10-cec.rules
    fi
    
    sudo udevadm control --reload-rules   

}

function install_supacec() {
    
    remove_supacec()    
    sudo cp "$md_build/10-cec.rules" /etc/udev/rules.d/10-cec.rules    
    sudo udevadm control --reload-rules


}
