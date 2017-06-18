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
rp_module_desc="HDMI-CEC Awareness"
rp_module_licence="GPL3"
rp_module_section="exp"
rp_module_flags="!x11"

function depends_supacec() {
    getDepends cec-utils
}

function sources_supacec() {
    gitPullOrClone "$md_build" "https://github.com/superterran/SupaCEC.git"

}

function install_supacec() {
}

function configure_supacec() {
}
