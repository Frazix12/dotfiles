# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# #Import's


$omp_config = Join-Path $PSScriptRoot ".\irfan.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
Import-Module -Name Terminal-Icons
Import-Module posh-git

winfetch-pro

#Function's
function OpenVSC { code . }
function DOWN {
  shutdown /s /t 0
}
# Alias
Set-Alias vc OpenVSC
Set-Alias btw winfetch
Set-Alias ll ls
Set-Alias down DOWN
Set-Alias btw winfetch-pro

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression
Clear-Host
winfetch-pro