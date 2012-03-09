function! s:RefreshBrowser()
    if &modified
        write
        silent ! xdotool search --class google-chrome key ctrl+r
        echo 'Refreshed Browser Successfully'
    endif
endfunction

command RefreshBrowser call <SID>RefreshBrowser()
autocmd BufWriteCmd *.html,*.erb,*.css,*.haml,*.js call <SID>RefreshBrowser()
nmap <silent> <C-B> :call <SID>RefreshBrowser()<CR>
