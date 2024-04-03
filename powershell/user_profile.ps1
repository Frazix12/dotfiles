# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

#Import's
Import-Module posh-git

$omp_config = Join-Path $PSScriptRoot ".\irfan.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
Import-Module -Name Terminal-Icons

#Function's
function OpenVSC { code . }

# Alias
Set-Alias vc OpenVSC
Set-Alias btw winfetch
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias vim nvim

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}