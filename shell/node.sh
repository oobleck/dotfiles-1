# shell/node.sh

DKO_SOURCE="${DKO_SOURCE} -> shell/node.sh {"

# https://nodejs.org/api/repl.html#repl_environment_variable_options
export NODE_REPL_HISTORY="${XDG_DATA_HOME}/node_repl_history"

# ============================================================================
# npm config
# ============================================================================

[ -f "${LDOTDIR}/npmrc" ] &&
  export NPM_CONF_USERCONFIG="${LDOTDIR}/npmrc"

export NPM_CONFIG_INIT_VERSION="0.0.1"
export NPM_CONFIG_INIT_LICENSE="MIT"
export NPM_CONFIG_STRICT_SSL="TRUE"
export NPM_CONFIG_MESSAGE="Cut %s (via npm version)"
export NPM_CONFIG_SIGN_GIT_TAG="TRUE"

# more user overrides in ~/.dotfiles/local/{bash,zsh}rc

# ============================================================================
# npmrc
# ============================================================================

export NPMRC_STORE="${HOME}/.local/npmrcs"

# ==============================================================================

export DKO_SOURCE="${DKO_SOURCE} }"
