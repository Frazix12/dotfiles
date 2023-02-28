# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

#Import's
# Import-Module posh-git
# Import-Module PSFzf

$omp_config = Join-Path $PSScriptRoot ".\irfan.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

#Function's
function OpenVSC { code . }
function GitClone { git clone @args }
function CodeDirectory { Set-Location D:\CODE }
function Invoke-Tere() {
  $result = . C:\Users\irfan\.config\tree\tere.exe $args
  if ($result) {
    Set-Location $result
  }
}
# Alias
Set-Alias tere Invoke-Tere
Set-Alias vc OpenVSC
Set-Alias gc GitClone
Set-Alias cdc CodeDirectory
Set-Alias btw winfetch
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}