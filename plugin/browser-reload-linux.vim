    "=========================================================
" File:        browser-reload-linux.vim
" Author:      sp4ke <chakib.benz[at]gmail.com>
" Last Change: 1-Jun-2013.
" Version:     1.1
" WebPage:     https://github.com/lordm/vim-browser-reload-linux
" License:     BSD
"==========================================================
"

if !exists('g:returnAppFlag')
    let g:returnAppFlag = 1
endif 

function! s:ReloadBrowser(browser, ...)
    let l:currentWindow = substitute(system('xdotool getactivewindow'), "\n", "", "")

    let l:activateCommand = " windowactivate "

    if ( a:browser == "Chrome" || a:browser == "Chromium-browser" )
        let l:activateCommand = ""
    endif


    if (a:0 == 1) "If using grep window title method
        let l:searchArgs = "--name " . "'" . a:1 . ".*" . a:browser . "'"
    else
        let l:searchArgs = "--class " . a:browser
    endif

    exec "silent ! xdotool search --onlyvisible " l:searchArgs . l:activateCommand . " key --clearmodifiers ctrl+r"

    if g:returnAppFlag
        exec "silent ! xdotool windowactivate " . l:currentWindow
    endif
    redraw!
endfunction

" Google Chrome
command! -nargs=? ChromeReload call s:ReloadBrowser("Chrome", <f-args>)
command! -nargs=? -bar ChromeReloadStart ChromeReloadStop | autocmd BufWritePost <buffer> ChromeReload <args>
command! -bar ChromeReloadStop autocmd! BufWritePost <buffer>

" Chromium
command! -bar ChromiumReload call s:ReloadBrowser("Chromium-browser")
command! -bar ChromiumReloadStart ChromiumReloadStop | autocmd BufWritePost <buffer> ChromiumReload
command! -bar ChromiumReloadStop autocmd! BufWritePost <buffer>

" Firefox
command! -bar FirefoxReload call s:ReloadBrowser("Firefox")
command! -bar FirefoxReloadStart FirefoxReloadStop | autocmd BufWritePost <buffer> FirefoxReload
command! -bar FirefoxReloadStop autocmd! BufWritePost <buffer>

" Opera
command! -bar OperaReload call s:ReloadBrowser("Opera")
command! -bar OperaReloadStart OperaReloadStop | autocmd BufWritePost <buffer> OperaReload
command! -bar OperaReloadStop autocmd! BufWritePost <buffer>

" All Browsers
command! -bar AllBrowserReload silent OperaReload | FirefoxReload | ChromeReload | ChromiumReload 
command! -bar AllBrowserReloadStart AllBrowserReloadStop | autocmd BufWritePost <buffer> AllBrowserReload
command! -bar AllBrowserReloadStop autocmd! BufWritePost <buffer>
