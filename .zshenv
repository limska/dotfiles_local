#! /bin/zsh

#==============================================================================
# DEFAULT APPS
#==============================================================================
export VISUAL="gvim"

#==============================================================================
# MIRROR
#==============================================================================
if [ -d "$MIRROR_HOME" ] ; then
  export MIRROR_HOME="/starmirror"
fi

#==============================================================================
# GIT
#==============================================================================
GITHOME="$HOME/software/git/2.28.0"
if [ -d "$GITHOME" ] ; then
  export PATH="$GITHOME/bin:$PATH"
  export MANPATH="$GITHOME/man:$MANPATH"
  export GIT_EXEC_PATH="$GITHOME/libexec/git-core"
  export GIT_TEMPLATE_DIR="$GITHOME/share/git-core/templates"
fi

#==============================================================================
# CMake
#==============================================================================
CMAKEHOME="$HOME/software/cmake"
if [ -d "$CMAKEHOME" ] ; then
  export PATH="$CMAKEHOME/bin:$PATH"
  export MANPATH="$CMAKEHOME/man:$MANPATH"
fi

#==============================================================================
# DEV
#==============================================================================
export DEV_HOME="$HOME/src/starccm/dev"
export PATH="$DEV_HOME/star/bin:$PATH"

#==============================================================================
# JAVA SETUP
#==============================================================================
export JAVA_HOME="/usr/bin/"

#==============================================================================
# PATH ADDITIONS
#==============================================================================
export PATH="/opt/google/chrome:$PATH"

#==============================================================================
# VIM
#==============================================================================
export PATH="$HOME/software/vim/bin:$PATH"
GCC_LIB=/u/cd8rit/src/starccm/dev/compilers/linux-x86_64-2.10.1/gnu7.1.0/lib64
if [ -d "$GCC_LIB" -a -z "`echo ${LD_LIBRARY_PATH} | grep $GCC_LIB`" ] ; then
  export LD_LIBRARY_PATH=$GCC_LIB:${LD_LIBRARY_PATH}
fi

#==============================================================================
# GET LOCALIZATION VARIABLES FROM LOCALE.CONF IF IT EXISTS
#==============================================================================
[[ -f /etc/locale.conf ]] && source /etc/locale.conf

#==============================================================================
# VSCode
#==============================================================================
export PATH="$HOME/software/vscode/code/bin:$PATH"

#==============================================================================
# AMESIM
#==============================================================================
export AME="/tpapps/AMESim/v17/Amesim/"
export PATH="$AME:$PATH"
export LMS_LICENSE=5053@soraya.london.cd-adapco.com
export AMESIM_SERVER="localhost" # for startest

#==============================================================================
# GT-SUITE
#==============================================================================
export GTIVERBOSE=0
export GTIHOME="/tpapps/gtpower/2017/"
export PATH="$GTIHOME/bin:$PATH"
export GTISOFT_LICENSE_FILE="27005@wallace.london.cd-adapco.com,27005@gromit.london.cd-adapco.com,27005@neo.london.cd-adapco.com"
export GTPOWER_VERSION="2018"

#==============================================================================
# ABAQUS
#==============================================================================
export PATH="/tpapps/abaqus/2017/Commands:$PATH"

#==============================================================================
# GPROMS
#==============================================================================
export PSELMD_LICENSE_FILE="@soraya.london.cd-adapco.com"
export PATH="/tpapps/gPROMS/ProcessBuilder_1.3.1.55087/bin":$PATH

#==============================================================================
# WAVE
#==============================================================================
export WAVE_HOME="/tpapps/WAVE/2017.1/"
export PATH="$WAVE_HOME/bin/:$PATH"
export PATH_TO_WAVE_LIBRARIES="$WAVE_HOME/2017.1/Common/Libs/lnx_x23.64" # for startest

#==============================================================================
# Ruby
#==============================================================================
export RUBY_HOME="$HOME/software/ruby/current"
export PATH="${RUBY_HOME}/bin/:$PATH"

#==============================================================================
# GOLANG
#==============================================================================
export GOLANG_HOME="$HOME/software/go"
export PATH="${GOLANG_HOME}/bin/:$PATH"

#==============================================================================
# NODE
#==============================================================================
export NODE_HOME="$HOME/software/node-v13.2.0-linux-x64"
export PATH="${NODE_HOME}/bin/:$PATH"

#==============================================================================
# Python2
#==============================================================================
#export PYTHON2_HOME="$HOME/software/python/2.7.17"
#export PATH="${PYTHON2_HOME}/bin/:$PATH"
#export LD_LIBRARY_PATH="${PYTHON2_HOME}/lib:${LD_LIBRARY_PATH}"

#==============================================================================
# Python3
#==============================================================================
export PYTHON3_HOME="$HOME/software/python/3.7.5"
export OPENSSL_HOME="$HOME/software/openssl/1.1.1d"
export PATH="${PYTHON3_HOME}/bin:${OPENSSL_HOME}/bin:$PATH"
export LD_LIBRARY_PATH="${PYTHON3_HOME}/lib:${OPENSSL_HOME}/lib:${LD_LIBRARY_PATH}"

#==============================================================================
# HDF5View
#==============================================================================
export HDF5VIEW_HOME="$HOME/software/HDFView-3.1.0-Linux/HDFView/3.1.0"
export PATH="${HDF5VIEW_HOME}:$PATH"

#==============================================================================
# CGNSTools
#==============================================================================
export CGNSTOOLS_HOME="$HOME/software/CGNS-3.2.1"
export PATH="${CGNSTOOLS_HOME}/bin:$PATH"

#==============================================================================
# Firefox
#==============================================================================
export FIREFOX_HOME="$HOME/software/firefox"
export PATH="${FIREFOX_HOME}:$PATH"

#==============================================================================
# MTS
#==============================================================================
MTSHOME="$HOME/src/starccm/dev/mts/build/install/mts"
if [ -d "$MTSHOME" ] ; then
  JAVA_HOME=$HOME/src/starccm/dev/jdk/linux-x86_64/latest
  alias mts=$MTSHOME/bin/mts
fi

#==============================================================================
# NixOS
#==============================================================================
if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

#==============================================================================
# git-lfs
#==============================================================================
GITLFSHOME="$HOME/software/git-lfs/bin"
if [ -d "$GITLFSHOME" ] ; then
  export PATH="${GITLFSHOME}:$PATH"
fi

