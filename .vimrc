source $HOME/dotfiles/.vimrc

autocmd BufNewFile,BufReadPost *.h,*.cpp call CppSettings()

function CppSettings()
    set makeprg=cmake_star\ -dev\ -dut\ -k
    set shiftwidth=2
    set tabstop=2
    set softtabstop=2
endfunction

autocmd BufNewFile,BufReadPost *.java call JavaSettings()

function JavaSettings()
    set makeprg=make\ java
    set shiftwidth=4
    set tabstop=4
    set softtabstop=4
endfunction

autocmd BufNewFile,BufReadPost *.py call PythonSettings()

function PythonSettings()
    set makeprg=python3
    set shiftwidth=4
    set tabstop=4
    set softtabstop=4
    set expandtab
    set autoindent
    syntax on
endfunction
