# PowerShell Profile

## Set Profile

```ps
code $PROFILE
```

`$PROFILE`

```ps
$script = "$Home\poshfiles\profile.ps1"
if (Test-Path $script) {
  . $script
}
```

## Install PowerShell7 and oh-my-posh at Microsoft Store

## Install Scoop

```ps
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
iwr -useb get.scoop.sh | iex
```

## Install some tools with scoop

```ps
scoop bucket add extras
```

- aria2
- git
- lazygit
- scoop-completion
- neovim
- fzf
- psfzf
- neofetch

## Setup Neovim

### Install [vim-plug](https://github.com/junegunn/vim-plug)

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

`neovim`

```
:PlugInstall
```
