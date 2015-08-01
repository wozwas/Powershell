Enter-PSSession localhost
add-pssnapin VM*
Connect-VIServer -Server localhost
$VMlist = @("Calypso.callard.local", "Rancid", "Uranus.callard.local", "Titan.callard.local", "Cressida.callard.local")
foreach ($objItem in $VMlist) {
Get-VM $objItem |
Get-Snapshot |
Where-Object {$_.Name.Contains("Daily") -and $_.Created -lt (Get-Date).AddDays(-1) } |
Remove-Snapshot -Confirm:$false
}