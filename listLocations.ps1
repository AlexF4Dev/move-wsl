
$items = Get-ChildItem -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss\*

foreach($item in $items){
    $item
    $distName = $item.GetValue('DistributionName')
    ''
    'WSL Distribution Name:' + $distName
    $basePath = $item.GetValue('BasePath')
    $basePath = $basePath -replace '\\\\\?\\', ''
    gci $basePath

}

