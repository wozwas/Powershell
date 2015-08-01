Import-Module MSOnline
$365Logon = get-credential
$365PSSession = New-PSSession –ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell -Credential $365Logon -Authentication Basic -AllowRedirection
Import-PSSession $365PSSession -AllowClobber
Set-ExecutionPolicy RemoteSigned
Connect-MsolService –Credential $365Logon