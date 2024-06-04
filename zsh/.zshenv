#Use kvantum enginge in QT theming, GTK apps can be set with lxappearance
#export QT_STYLE_OVERRIDE="kvantum"
export QT_QPA_PLATFORMTHEME="qt6ct"

#export OCIO=~/git-repos/colormanagement/filmic-blender/config.ocio
#export OCIO=~/git-repos/colormanagement/OpenColorIO-Configs/aces_1.0.3_blender/config.ocio

#https://wiki.archlinux.org/title/SSH_keys#Start_ssh-agent_with_systemd_user
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export SSH_ASKPASS=ssh-askpass

export PATH=$PATH:~/.local/bin

#export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons

export TERM="xterm-kitty"
export EDITOR="nvim"

#Prime render offload needs these apparently (the number indicates the device ID so check it with 'xrandr --listproviders')
#export __NV_PRIME_RENDER_OFFLOAD=1
#export __GLX_VENDOR_LIBRARY_NAME=nvidia

#Expose local font directory to Fusion
export FUSION_FONTS="~/.local/share/fonts"

#nnn configuration
export NNN_TERMINAL="xterm-kitty"
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_TRASH=1
export NNN_PLUG="f:finder;o:fzopen;p:preview-tui;d:dragdrop;t:nmount;l:launch;m:mimelist;k:kdeconnect"
export NNN_BMS="h:/home/mats;e:/run/media/mats;d:/home/mats/Downloads;p:/srv/projects;r:/srv/render;m:/home/mats/.config/nnn/mounts;w:/work;g:/gdrive"
export NNN_RCLONE='rclone mount --vfs-cache-mode writes'
#export NNN_OPENER=/home/mats/.config/nnn/plugins/nuke
#BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
#export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

#fzf
export FZF_DEFAULT_COMMAND="fd --hidden --type f"
