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

 :ChromeReload      //reload "Google Chrome"
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

If your window manager does not behave well with the class names, you can set the plugin to use window title search instead with the following option in your `.vimrc` file:

::
 
 "default is 0
 let g:browserUseWindowTitle = 1

You can modify the window title search by setting any of the following options:

::

 let g:browserFirefoxTitle = "Mozilla Firefox"
 let g:browserChromeTitle = "Chrome"
 let g:browserChromiumTitle = "Chromium"
 let g:browserOperaTitle = "Opera"

If you want old style command, write this setting in your .vimrc

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
