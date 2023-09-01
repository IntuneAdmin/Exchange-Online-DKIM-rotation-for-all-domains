# Exchange Online DKIM rotarion automation for all domains.

Rotate your DKIM keys automatically for all domains that have configured DKIM within Exchange Online.
This mini script checks the domains in Exchange Online and sees if DKIM is enabled. If DKIM is on then it rotates the DKIM Keys via Rotate-DkimSigningConfig.

# Why you need to rotate DKIM keys
DKIM (DomainKeys Identified Mail) key rotation is a process of periodically changing the cryptographic keys used for DKIM signatures in your Microsoft 365 environment. DKIM is an email authentication method that helps verify that an email message has not been tampered with during transit and that it actually originated from the domain it claims to come from.

Rotating DKIM keys is important for security reasons. If the same DKIM key is used for an extended period, it becomes more vulnerable to attacks, as it gives potential attackers more time to crack the key or compromise it in some way. Regularly changing DKIM keys enhances email security.

# Is DKIM rotation safe?
DKIM rotation, when performed correctly, is a safe practice and is actually essential for maintaining email security. The primary purpose of DKIM key rotation is to enhance security by reducing the risk associated with using the same cryptographic key for an extended period.

# Is Microsoft not doing this for you?
Yes they do!

Microsoft rotates the DKIM keys once a year. You just don't know when. Get in control and rotate your keys yourself periodically to make sure your keys change.

# Microsoft documentation about DKIM configuration.
https://learn.microsoft.com/en-us/microsoft-365/security/office-365-security/email-authentication-dkim-configure?view=o365-worldwide

# Microsoft documentation about DKIM key rotation
https://learn.microsoft.com/en-us/powershell/module/exchange/rotate-dkimsigningconfig?view=exchange-ps
