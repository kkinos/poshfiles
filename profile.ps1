oh-my-posh init pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/powerlevel10k_rainbow.omp.json | Invoke-Expression

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"

Set-Alias touch New-Item
Set-Alias vi nvim
Set-Alias vim nvim
Set-Alias lg lazygit

$Env:XDG_CONFIG_HOME = $HOME+"\poshfiles"
[Environment]::SetEnvironmentVariable("XDG_CONFIG_HOME", $ENV:XDG_CONFIG_HOME, [EnvironmentVariableTarget]::User)

