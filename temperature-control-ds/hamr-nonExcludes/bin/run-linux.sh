#!/usr/bin/env bash
#
# This file is autogenerated.  Do not edit
#
set -e
export SCRIPT_HOME=$( cd "$( dirname "$0" )" &> /dev/null && pwd )
cd $SCRIPT_HOME
x-terminal-emulator -e sh -c "linux-build/TempSensor_i_tsp_tempSensor_App" &
x-terminal-emulator -e sh -c "linux-build/TempControl_i_tcp_tempControl_App" &
x-terminal-emulator -e sh -c "linux-build/Fan_i_fp_fan_App" &
read -p "Press enter to initialise components ..."
linux-build/Main
read -p "Press enter again to start ..."
linux-build/Main