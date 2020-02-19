
# browser-reload-linux.vim

## Description


Vim plugin to reload your browser. 
This is a linux compatible version inspired by the mac version https://github.com/tell-k/vim-browsereload-mac

Thanks to [aareman](https://github.com/aareman), the new version of the plugin fixes a refresh glitch with `ctrl-r` getting spammed in vim as well as the following features:

A) Add a Reload Delay

A new `g:reloadDelay` variable which can be set to hackily get around waiting for a build system to finish before reloading. 

B) Reload on all file changes

A new `g:reloadAll` variable, which if set will add the reload command to all php,js,css, and html files in your project.



## Required

xdotool v3.20150503.1 [https://github.com/jordansissel/xdotool](https://github.com/jordansissel/xdotool)

For Debian and Ubuntu users, you can find it in the package manager.

```
  sudo apt-get install xdotool
```

Otherwise, it's preferred to download the latest version and build it.
If you get build errors, make sure you have 'libxext-dev' package.


## Usage


browser reload
```
 :ChromeReload <regex>      //reload "Google Chrome" with optional regex for window title
 :FirefoxReload     //reload "Firefox"
 :OperaReload       //reload "Opera"
 :AllBrowserReload  //reload all browser
```
start auto reload
```
 :ChromeReloadStart  
 :FirefoxReloadStart  
 :OperaReloadStart  
 :AllBrowserReloadStart  
```
stop auto reload
```
 :ChromeReloadStop
 :FirefoxReloadStop
 :OperaReloadStop
 :AllBrowserReloadStart
```

## Settings


By default, after reload browser focus will retain back to the vim window.

If you want to stop returnApp and keep the focus on the browser, 
change variable "g:returnAppFlag" to 0

```
 "default is 1
 let g:returnAppFlag = 1
```

If you want old style commad, write this setting in your .vimrc

```
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
 ```
