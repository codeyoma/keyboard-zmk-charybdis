# Code in this repository, built into the firmware as a Zephyr module (see zephyr/module.yml).

# KeyLay: active layer and battery levels for the KeyLay menu bar app
if(CONFIG_ZMK_KEYLAY)
  target_sources(app PRIVATE src/keylay.c)
endif()
