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

