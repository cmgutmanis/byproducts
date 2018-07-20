#download Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# dev tools
choco install visualstudio2017community -y
choco install vscode -y
choco install git -y
choco install sql-server-management-studio -y
choco install azurepowershell -y

# browsers
choco install firefox -y
choco install googlechrome -y

# miscellaneous tooling
choco install 7zip -y
choco install notepadplusplus -y
choco install keepass -y
