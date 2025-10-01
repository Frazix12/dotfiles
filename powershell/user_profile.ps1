# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
Clear-Host
fastfetch
# #Import's

$omp_config = Join-Path $PSScriptRoot ".\irfan.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
Import-Module -Name Terminal-Icons
Import-Module posh-git

fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression