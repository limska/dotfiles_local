#! /bin/zsh

source $HOME/dotfiles/.zshrc

export DISPLAY=:0.0

alias startest="startest -starout \
                         -jvmargs -Dabaqus.exe=/tpapps/abaqus/2017/CAE/2017/linux_a64/code/bin/ABQLauncher \
                         -jvmargs -Dabaqus.library=/tpapps/abaqus/2017/V6R2017x/linux_a64/code/bin/libABQSMACseModules.so \
                         -ldlibpath /tpapps/AMESim/v17/Amesim/lnx_x64/"

alias starccm_amesim="starccm+ -ldlibpath /tpapps/AMESim/v17/Amesim/lnx_x64/"
alias stardebugclient="starccm+ -jvmargs \"-Dsun.awt.disablegrab=true -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8765\""

alias g++mirror="/users/ccm+dev/compilers/linux-x86_64-2.10.1/gnu6.3.0/bin/g++"

alias -g makejava="make -k java"
alias -g makestar="cmake_star -k -dut"
alias -g makedebug="cmake_star -k -dut -ds4m -oo4m -m"
alias makeall="makejava; makestar"

alias -g '¬O'="xdg-open"

alias setdev=". ~/bin/setdev"

star ()
{
    source /install/STAR-CCMP/set_starccm+ $*
    (starccm+ >/dev/null 2>&1)&
    disown
}

gdbstar ()
{
    EDITOR=gvim ./bin/starccm+ -server -d cgdb -env gnu7.1 $*
}

valgrindstar ()
{
    starccm+ -server -d valgrind -env gnu7.1 $*
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

getStartestDb ()
{
    curl http://mds-app-stage.lebanon.cd-adapco.com/thirdPartyApplications | python -m json.tool
}
