[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$Env:LESSCHARSET = 'utf-8'
$Env:LC_ALL = 'C.UTF-8'

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Agnoster

# Set-PSReadlineOption -EditMode Emacs

# Ctrl + v for paste
Set-PSReadlineKeyHandler -Key Ctrl+v -Function Paste

# touch
function touch {set-content -Path ($args[0]) -Value ($null)} 

# docker shell
function rr {docker exec -it et bash}

# folder
function ff {explorer.exe .}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}