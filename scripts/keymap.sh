#!/bin/bash

keymap parse -c 10 -z ./config/charybdis.keymap >charybdis_keymap.yaml

TARGET_FILE="charybdis_keymap.yaml"
NEW_FIRST="layout: { dts_layout: charybdis_layouts.dtsi }"

# 첫 줄을 제외한 나머지를 읽고, 앞에 NEW_HEADER 붙여서 덮어쓰기
tail -n +2 "$TARGET_FILE" | {
    echo $NEW_FIRST
    cat
} >"$TARGET_FILE.tmp" && mv "$TARGET_FILE.tmp" "$TARGET_FILE"

keymap draw charybdis_keymap.yaml >charybdis_keymap.svg
