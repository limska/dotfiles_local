

export DISPLAY=:1.0

alias -g '¬O'="xdg-open"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#==============================================================================
# JAVA SETUP
#==============================================================================
#export JAVA_HOME="/usr/bin/"

#==============================================================================
# PATH ADDITIONS
#=============================================================================
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"


#==============================================================================
MODULES_HOME=/usr/share/modules
if [ -d "${MODULES_HOME}" ] ; then
  export MODULESHOME=${MODULES_HOME}
fi
MODULES_REPO=$HOME/modulefiles
if [ -d "${MODULES_REPO}" ] ; then
 export MODULESREPO=${MODULES_REPO}
 export MODULEPATH=$MODULESREPO
 source $MODULESHOME/init/zsh
fi

#==============================================================================
# VIM
#==============================================================================
export VISUAL="gvim"

#==============================================================================
# GET LOCALIZATION VARIABLES FROM LOCALE.CONF IF IT EXISTS
#==============================================================================
[[ -f /etc/locale.conf ]] && source /etc/locale.conf

#==============================================================================
# Angular - NVM
#==============================================================================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#==============================================================================
# Angular - Yarn
#==============================================================================
YARN_DIR="${HOME}/.yarn"
[[ -d "${YARN_DIR}/bin" ]] && PATH="${PATH}:${YARN_DIR}/bin"

#==============================================================================
# VSCode
#==============================================================================
VSCODE_HOME="$HOME/software/vscode/code"
if [ -d "${VSCODE_HOME}" ] ; then
  export PATH="${VSCODE_HOME}/bin:$PATH"
fi

#==============================================================================
# Gradle
#==============================================================================
GRADLE_VERSION=8.6
GRADLE_HOME="$HOME/software/gradle/gradle-${GRADLE_VERSION}"
if [ -d "${GRADLE_HOME}" ] ; then
  export PATH="${GRADLE_HOME}/bin:$PATH"
fi

#==============================================================================
# Ruby
#==============================================================================
RUBY_HOME="$HOME/software/ruby/current"
if [ -d "${RUBY_HOME}" ] ; then
  export RUBY_HOME
  export PATH="${RUBY_HOME}/bin/:$PATH"
fi

#==============================================================================
# GOLANG home
#==============================================================================
GOLANG_HOME1="$HOME/software/go"
if [ -d "${GOLANG_HOME1}" ] ; then
  export GOLANG_HOME=${GOLANG_HOME1}
  export PATH="${GOLANG_HOME}/bin/:$PATH"
fi

#==============================================================================
# GOLANG local
#==============================================================================
GOLANG_HOME2="/usr/local/go"
if [ -d "${GOLANG_HOME2}" ] ; then
  export GOLANG_HOME=${GOLANG_HOME2}
  export PATH="${GOLANG_HOME}/bin/:$PATH"
fi

#==============================================================================
# Python poetry
#==============================================================================
POETRY_HOME=$HOME/.poetry
if [ -d "${POETRY_HOME}" ] ; then
  source ${POETRY_HOME}/env
fi

#==============================================================================
# .local/bin
#==============================================================================
LOCAL_BIN=$HOME/.local/bin
if [ -d "${LOCAL_BIN}" ] ; then
  export PATH="${LOCAL_BIN}:$PATH"
fi

#==============================================================================
# Deno
#==============================================================================
DENO_INSTALL="/home/sava/.deno"
if [ -d "${DENO_INSTALL}" ] ; then
  export DENO_INSTALL
  export PATH="$DENO_INSTALL/bin:$PATH"
fi


#==============================================================================
# golang
#==============================================================================
GO_BIN=/usr/local/go/bin
if [ -d "${GO_BIN}" ] ; then
  export PATH="${GO_BIN}:$PATH"
fi


#==============================================================================
# CMake
#==============================================================================
#CMAKE_BIN=$HOME/software/cmake-3.24.1-linux-x86_64/bin
#if [ -d "${CMAKE_BIN}" ] ; then
#  export PATH="${CMAKE_BIN}:$PATH"
#fi


#==============================================================================
# git-lfs
#==============================================================================
GIT_LFS_BIN=$HOME/software/git-lfs-3.5.1/darwin-arm64/bin
if [ -d "${GIT_LFS_BIN}" ] ; then
  export PATH="${GIT_LFS_BIN}:$PATH"
fi


#==============================================================================
# nvim
#==============================================================================
NVIM_BIN=$HOME/software/nvim-macos-arm64/bin
if [ -d "${NVIM_BIN}" ] ; then
  export PATH="${NVIM_BIN}:$PATH"
fi


#==============================================================================
# golang local
#==============================================================================
GO_LOCAL_BIN=$HOME/go/bin
if [ -d "${GO_LOCAL_BIN}" ] ; then
  export PATH="${GO_LOCAL_BIN}:$PATH"
  JIRA_API_TOKEN=`cat $HOME/keys/jira.token`
  export JIRA_API_TOKEN
fi


#==============================================================================
# Gradle
#==============================================================================
GRADLE_BIN=/opt/gradle/gradle-7.5.1/bin
if [ -d "${GRADLE_BIN}" ] ; then
  export PATH="${GRADLE_BIN}:$PATH"
fi


#==============================================================================
# Dotnet
#==============================================================================
DOTNET_HOME=$HOME/.dotnet
if [ -d "${DOTNET_HOME}" ] ; then
  export PATH="${DOTNET_HOME}:$PATH"
fi


#==============================================================================
# Rust cargo
#==============================================================================
CARGO_ENV="$HOME/.cargo/env"
if [ -f "${CARGO_ENV}" ] ; then
  . "${CARGO_ENV}"
fi


#==============================================================================
# rnv
#==============================================================================
RNV_DIR=$HOME/software/rnv
if [ -d "${RNV_DIR}" ] ; then
  export PATH="${RNV_DIR}:$PATH"
fi


#==============================================================================
# Pager
#==============================================================================
export PAGER=cat

#==============================================================================
# NAG
#==============================================================================
export ENGINEHOME=$HOME/repos/nag/naglib
export SHOW_DEP_PROGRESS=0

#==============================================================================
# Flatpak
#==============================================================================
FLATPACK_SHARE=/var/lib/flatpak/exports/share
if [ -d "${FLATPACK_SHARE}" ] ; then
  export XDG_DATA_DIRS=${XDG_DATA_DIRS}:${FLATPACK_SHARE}
fi 

