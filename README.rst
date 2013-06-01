========================
browser-reload-linux.vim
========================

Description
=====================

Vim plugin to reload your browser. 
This is a linux compatible version inspired by the mac version https://github.com/tell-k/vim-browsereload-mac


Required
=====================

xdotool v2.2 http://www.semicomplete.com/projects/xdotool/

For Debian and Ubuntu users, you can find the package in synaptic manager but make sure it's not the old v2.0, as the plugin depends on v2.2.

::

  sudo apt-get install xdotool

Otherwise, it's preferred to download the latest version and build it.
If you get build errors, make sure you have 'libxext-dev' package.


Usage
=====================

browser reload::

 :ChromeReload <regex>      //reload "Google Chrome" with optional regex for window title
 :FirefoxReload     //reload "Firefox"
 :OperaReload       //reload "Opera"
 :AllBrowserReload  //reload all browser

start auto reload::

 :ChromeReloadStart  
 :FirefoxReloadStart  
 :OperaReloadStart  
 :AllBrowserReloadStart  

stop auto reload::

 :ChromeReloadStop
 :FirefoxReloadStop
 :OperaReloadStop
 :AllBrowserReloadStart


Settings
=====================

By default, after reload browser focus will retain back to the vim window.

If you want to stop returnApp and keep the focus on the browser, 
change variable "g:returnAppFlag" to 0

::

 "default is 1
 let g:returnAppFlag = 1

If you want old style commad, write this setting in your .vimrc

::

 "reload
 command! -bar Cr silent ChromeReload
 command! -bar Fr silent FirefoxReload
 command! -bar Or silent OperaReload
 command! -bar Ar silent AllBrowserReload
 "auto reload start
 command! -bar CrStart silent ChromeReloadStart
 command! -bar FrStart silent FirefoxReloadStart
 command! -bar OrStart silent OperaReloadStart
 command! -bar ArStart silent AllBrowserReloadStart
 "auto reload stop
 command! -bar CrStop silent ChromeReloadStop
 command! -bar FrStop silent FirefoxReloadStop
 command! -bar OrStop silent OperaReloadStop
 command! -bar ArStop silent AllBrowserReloadStop
