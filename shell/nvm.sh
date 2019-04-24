# shell/after.sh

DKO_SOURCE="${DKO_SOURCE} -> shell/nvm.sh"

# ==============================================================================
# nvm
# ==============================================================================

# FNM_DIR="${XDG_CONFIG_HOME}/fnm"
# if [ -d "$FNM_DIR" ]; then
#   export FNM_DIR
#   export PATH="${FNM_DIR}:${PATH}"
#   eval "$(fnm env)"
# else
# custom NVM_DIR so we don't pollute home
export NVM_DIR="${XDG_CONFIG_HOME}/nvm"

# using nvm? -- store default version for prompt compare
__dko_source "${NVM_DIR}/nvm.sh" && DKO_SOURCE="${DKO_SOURCE} -> nvm"

# Get initial nvm version using bash string manipulation instead of NVM
# calls. While this is significantly faster, it is not correct if starting
# a shell in a dir with a .nvmrc ~= default (which I almost never do).
# Also does not use vX.X.X -- just X.X.X
# This is reset if this file is re-sourced, which it is in tmux
__nodir="$("${DOTFILES}/bin/dko-nvm-node-version")"
# fi

DKO_DEFAULT_NODE_VERSION="${__nodir%\/bin}"
#DKO_DEFAULT_NODE_VERSION="$(nvm version default)"
export DKO_DEFAULT_NODE_VERSION
