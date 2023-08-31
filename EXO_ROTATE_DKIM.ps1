$organization = "<DOMAINNAME>.onmicrosoft.com"
Connect-ExchangeOnline -ManagedIdentity -Organization $organization

$customdomains = (Get-DkimSigningConfig | ? { $_.Domain -NotLike '*.onmicrosoft.com' -and $_.Enabled -like 'True'}).name 
$customdomains | foreach { 
$Rotate = Rotate-DkimSigningConfig -Identity $_ 
}

