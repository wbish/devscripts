param([String]$pathAlias)

$aliases = @{}

# Sort alphabetically
$aliases.Add('c', 'c:\')
$aliases.Add('dev','c:\dev')
$aliases.Add('ds','C:\dev\scripts')
$aliases.Add('e', 'e:\')
$aliases.Add('f', 'f:\')
$aliases.Add('t', 'f:\tools')
$aliases.Add('u', '%USERPROFILE%')

if ($pathAlias -eq '')
{
    Write-Host "Change to a directory"
    Write-Host ""
    Write-Host "Usage:"
    Write-Host "  c <alias>"
}
elseif ($aliases.ContainsKey($pathAlias))
{
    return $aliases.Get_Item($pathAlias)
}
else
{
    Write-Host "Path alias '$pathAlias' not defined"
}

return 1