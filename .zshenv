#! /bin/zsh

#==============================================================================
# DEFAULT APPS
#==============================================================================
export VISUAL="gvim"

#==============================================================================
# MIRROR
#==============================================================================
export MIRROR_HOME="/starmirror"

#==============================================================================
# PKI card
#==============================================================================
export NSS_DEFAULT_DB_TYPE=sql

#==============================================================================
# MIRROR GIT
#==============================================================================
export PATH="$MIRROR_HOME/git/latest/linux-x86_64/bin:$PATH"
export PATH="$MIRROR_HOME/python/latest/linux-x86_64/bin:$PATH"
export MANPATH="$MIRROR_HOME/git/latest/linux-x86_64/share/man:$MANPATH"
export GIT_EXEC_PATH="$MIRROR_HOME/git/latest/linux-x86_64/libexec/git-core"
export GIT_TEMPLATE_DIR="$MIRROR_HOME/git/latest/linux-x86_64/share/git-core/templates"

#==============================================================================
# DEV
#==============================================================================
export DEV_HOME="$HOME/dev"
export PATH="$DEV_HOME/star/:$PATH"
export PATH="$DEV_HOME/star/bin/:$PATH"
export PATH="$DEV_HOME/startest/bin/:$PATH"

#==============================================================================
# JAVA SETUP
#==============================================================================
export JAVA_HOME="/usr/bin/"

#==============================================================================
# PATH ADDITIONS
#==============================================================================
export PATH="/opt/google/chrome/:$PATH"

#==============================================================================
# GET LOCALIZATION VARIABLES FROM LOCALE.CONF IF IT EXISTS
#==============================================================================
[[ -f /etc/locale.conf ]] && source /etc/locale.conf

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
