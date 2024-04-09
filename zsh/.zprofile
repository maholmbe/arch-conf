if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

#[[ $XDG_VTNR -eq 1 ]] && tbsm
