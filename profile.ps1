Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineOption -HistoryNoDuplicates
Set-PSReadlineOption -BellStyle None
Set-PSReadlineOption -Colors @{InlinePrediction='DarkGreen'}

Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

Set-Alias touch New-Item
Set-Alias vi nvim
Set-Alias vim nvim
Set-Alias lg lazygit

$Env:XDG_CONFIG_HOME = $HOME+"\poshfiles"
[Environment]::SetEnvironmentVariable("XDG_CONFIG_HOME", $ENV:XDG_CONFIG_HOME, [EnvironmentVariableTarget]::User)

Invoke-Expression (&starship init powershell)
