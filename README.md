
# browser-reload-linux.vim

## Description

Vim/Neovim plugin to reload your browser.
This is a linux compatible version inspired by the mac version https://github.com/tell-k/vim-browsereload-mac

**Now with full Neovim support!** The plugin automatically detects whether you're using Vim or Neovim and uses the appropriate execution method (async jobstart in Neovim for better performance).

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


## Installation

### Vim

Use your favorite plugin manager. For example, with [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'lordm/vim-browser-reload-linux'
```

### Neovim

#### Using lazy.nvim
```lua
{
  'lordm/vim-browser-reload-linux',
}
```

#### Using packer.nvim
```lua
use 'lordm/vim-browser-reload-linux'
```

#### Using vim-plug
```vim
Plug 'lordm/vim-browser-reload-linux'
```

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

### Configuration Options

**g:returnAppFlag** - Control focus behavior after reload
By default, after reload browser focus will return back to the Vim/Neovim window.

If you want to stop returnApp and keep the focus on the browser,
change variable "g:returnAppFlag" to 0

#### Vim (.vimrc)
```vim
" default is 1
let g:returnAppFlag = 1
```

#### Neovim (init.lua)
```lua
vim.g.returnAppFlag = 1
```

**g:reloadDelay** - Add delay before reload (in milliseconds)
Useful for waiting for build systems to finish compiling.

#### Vim (.vimrc)
```vim
let g:reloadDelay = 1000  " Wait 1 second before reload
```

#### Neovim (init.lua)
```lua
vim.g.reloadDelay = 1000  -- Wait 1 second before reload
```

**g:reloadAll** - Reload on all file changes
If set, will add the reload command to all php, js, css, and html files in your project.

#### Vim (.vimrc)
```vim
let g:reloadAll = 1
```

#### Neovim (init.lua)
```lua
vim.g.reloadAll = 1
```

### Optional Command Shortcuts

If you want old style short commands, add these settings:

#### Vim (.vimrc)
```vim
" reload
command! -bar Cr silent ChromeReload
command! -bar Fr silent FirefoxReload
command! -bar Or silent OperaReload
command! -bar Ar silent AllBrowserReload
" auto reload start
command! -bar CrStart silent ChromeReloadStart
command! -bar FrStart silent FirefoxReloadStart
command! -bar OrStart silent OperaReloadStart
command! -bar ArStart silent AllBrowserReloadStart
" auto reload stop
command! -bar CrStop silent ChromeReloadStop
command! -bar FrStop silent FirefoxReloadStop
command! -bar OrStop silent OperaReloadStop
command! -bar ArStop silent AllBrowserReloadStop
```

#### Neovim (init.lua)
```lua
vim.api.nvim_create_user_command('Cr', 'ChromeReload', { bar = true })
vim.api.nvim_create_user_command('Fr', 'FirefoxReload', { bar = true })
vim.api.nvim_create_user_command('Or', 'OperaReload', { bar = true })
vim.api.nvim_create_user_command('Ar', 'AllBrowserReload', { bar = true })
-- auto reload start
vim.api.nvim_create_user_command('CrStart', 'ChromeReloadStart', { bar = true })
vim.api.nvim_create_user_command('FrStart', 'FirefoxReloadStart', { bar = true })
vim.api.nvim_create_user_command('OrStart', 'OperaReloadStart', { bar = true })
vim.api.nvim_create_user_command('ArStart', 'AllBrowserReloadStart', { bar = true })
-- auto reload stop
vim.api.nvim_create_user_command('CrStop', 'ChromeReloadStop', { bar = true })
vim.api.nvim_create_user_command('FrStop', 'FirefoxReloadStop', { bar = true })
vim.api.nvim_create_user_command('OrStop', 'OperaReloadStop', { bar = true })
vim.api.nvim_create_user_command('ArStop', 'AllBrowserReloadStop', { bar = true })
```
