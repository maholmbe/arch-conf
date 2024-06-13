# Download Znap, if it's not there yet.
[[ -r ~/git-repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/git-repos/znap
source ~/git-repos/znap/znap.zsh  # Start Znap

# `znap source` starts plugins.
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
#znap source zdharma-continuum/fast-syntax-highlighting
znap source zsh-users/zsh-history-substring-search

znap eval zoxide 'zoxide init zsh'
znap eval fzf 'fzf --zsh'

znap eval starship 'starship init zsh'
znap prompt

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)
