# Exchang Online DKIM Rotation For All Domains
# Version 1.0

# You need a managed Identity to connect with Exchange Online.

$organization = "<DOMAINNAME>.onmicrosoft.com"
Connect-ExchangeOnline -ManagedIdentity -Organization $organization

$customdomains = (Get-DkimSigningConfig | ? { $_.Domain -NotLike '*.onmicrosoft.com' -and $_.Enabled -like 'True'}).name 
$customdomains | foreach { 
$Rotate = Rotate-DkimSigningConfig -Identity $_ 
}

