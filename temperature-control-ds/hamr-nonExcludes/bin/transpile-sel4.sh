#!/usr/bin/env bash
#
# This file is autogenerated.  Do not edit
#
set -e

if [ -z "${SIREUM_HOME}" ]; then
  echo "SIREUM_HOME not set. Refer to https://github.com/sireum/kekinian/#installing"
  exit 1
fi

SCRIPT_HOME=$( cd "$( dirname "$0" )" &> /dev/null && pwd )

PATH_SEP=":"
if [ -n "$COMSPEC" -a -x "$COMSPEC" ]; then
  PATH_SEP=";"
fi

OUTPUT_DIR="${SCRIPT_HOME}/../src/c/CAmkES_seL4/slang_libraries/TempSensor_i_tsp_tempSensor"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/b/TemperatureControl${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/b/TempSensor_i_tsp_tempSensor" \
  --output-dir "${OUTPUT_DIR}" \
  --name "TempSensor_i_tsp_tempSensor" \
  --apps "b.TempSensor_i_tsp_tempSensor.tempSensor" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 2 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.UConnection]=1" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=2" \
  --cmake-includes "+${SCRIPT_HOME}/settings_TempSensor_i_tsp_tempSensor.cmake" \
  --forward "art.ArtNative=b.TempSensor_i_tsp_tempSensor.tempSensor" \
  --stack-size "110592" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/TempSensor_i_tsp_tempSensor/TempSensor_i_tsp_tempSensor_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/TempSensor_i_tsp_tempSensor/TempSensor_i_tsp_tempSensor_adapter.c" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../src/c/CAmkES_seL4/slang_libraries/TempControl_i_tcp_tempControl"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/b/TemperatureControl${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/b/TempControl_i_tcp_tempControl" \
  --output-dir "${OUTPUT_DIR}" \
  --name "TempControl_i_tcp_tempControl" \
  --apps "b.TempControl_i_tcp_tempControl.tempControl" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 5 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=5;IS[Z,art.UConnection]=1" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=5" \
  --cmake-includes "+${SCRIPT_HOME}/settings_TempControl_i_tcp_tempControl.cmake" \
  --forward "art.ArtNative=b.TempControl_i_tcp_tempControl.tempControl" \
  --stack-size "110592" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/TempControl_i_tcp_tempControl/TempControl_i_tcp_tempControl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/TempControl_i_tcp_tempControl/TempControl_i_tcp_tempControl_adapter.c" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../src/c/CAmkES_seL4/slang_libraries/Fan_i_fp_fan"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/b/TemperatureControl${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/b/Fan_i_fp_fan" \
  --output-dir "${OUTPUT_DIR}" \
  --name "Fan_i_fp_fan" \
  --apps "b.Fan_i_fp_fan.fan" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 2 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.UConnection]=1" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=2" \
  --cmake-includes "+${SCRIPT_HOME}/settings_Fan_i_fp_fan.cmake" \
  --forward "art.ArtNative=b.Fan_i_fp_fan.fan" \
  --stack-size "110592" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/Fan_i_fp_fan/Fan_i_fp_fan_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/Fan_i_fp_fan/Fan_i_fp_fan_adapter.c" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../src/c/CAmkES_seL4/slang_libraries/SlangTypeLibrary"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/b/SlangTypeLibrary" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SlangTypeLibrary" \
  --apps "b.SlangTypeLibrary.SlangTypeLibrary" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 1 \
  --cmake-includes "+${SCRIPT_HOME}/settings_SlangTypeLibrary.cmake" \
  --forward "art.ArtNative=b.SlangTypeLibrary.SlangTypeLibrary" \
  --stack-size "16777216" \
  --stable-type-id \
  --lib-only \
  --verbose