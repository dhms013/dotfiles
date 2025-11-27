#!/bin/bash

if [[ "$TERM" == *"ghostty"* ]]; then
    fastfetch --config ~/.config/fastfetch/config_Ghostty.jsonc
elif [[ "$TERM" == *"kitty"* ]] || [[ -n "$KITTY_LISTEN_ON" ]]; then
  fastfetch --config ~/.config/fastfetch/config_kitty.jsonc
else
    fastfetch --config ~/.config/fastfetch/config.jsonc
fi
