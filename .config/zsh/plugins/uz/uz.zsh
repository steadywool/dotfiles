typeset UZ_PATH=${0:A:h}
typeset UZ_PLUGIN_PATH=${UZ_PLUGIN_PATH:-$HOME/.config/zsh/plugins}
typeset -a UZ_PLUGINS

zadd() {
  local zmodule=${1:t} zurl=${1}
  local zpath=${UZ_PLUGIN_PATH}/${zmodule}
  UZ_PLUGINS+=(${zpath})

  if [[ ! -d ${zpath} ]]; then
    mkdir -p ${zpath}
    git clone --recursive https://github.com/${zurl}.git ${zpath}
  fi

  local zscripts=(${zpath}/(init.zsh|${zmodule:t}.(zsh|plugin.zsh|zsh-theme|sh))(NOL[1]))
  source ${zscripts}
}

alias zupdate="find ${UZ_PLUGIN_PATH} -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
