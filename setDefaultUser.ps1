Function WSL-SetDefaultUser ($distro, $user) {
    Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lxss\*\ DistributionName | Where-Object -Property DistributionName -eq $distro | Set-ItemProperty -Name DefaultUid -Value ((wsl -d $distro -u $user -e id -u) | Out-String); 
};


WSL-SetDefaultUser "Ubuntu-20.04"  "alex"
#Remove-Item Function:WSL-SetDefaultUser;