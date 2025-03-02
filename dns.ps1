# Install DNS role and management tools
Install-WindowsFeature -name dns -IncludeManagementTools

# Add DNS Primary Zone
Add-DnsServerPrimaryZone -Name "ngcp62.ph" -ZoneFile "ngcp62.ph.dns"

# Add DNS records
add-DnsServerResourceRecord -zonename ngcp62.ph -A -name ns -ipv4address 10.62.1.10
add-DnsServerResourceRecord -zonename ngcp62.ph -Cname -name www -hostname ns.ngcp62.ph
add-DnsServerResourceRecord -zonename ngcp62.ph -Cname -name imap -hostname ns.ngcp62.ph
add-DnsServerResourceRecord -zonename ngcp62.ph -Cname -name pop -hostname ns.ngcp62.ph
add-DnsServerResourceRecord -zonename ngcp62.ph -Cname -name smtp -hostname ns.ngcp62.ph

# FOR CISCO DEVICES DNS RECORDS;
add-DnsServerResourceRecord -zonename ngcp62.ph -A -name cb -ipv4address 10.62.1.4
add-DnsServerResourceRecord -zonename ngcp62.ph -A -name ct -ipv4address 10.62.1.2
add-DnsServerResourceRecord -zonename ngcp62.ph -A -name cm -ipv4address 10.62.100.8
add-DnsServerResourceRecord -zonename ngcp62.ph -A -name ed -ipv4address 10.62.62.1
add-DnsServerResourceRecord -zonename ngcp62.ph -A -name p1 -ipv4address 10.62.100.101
add-DnsServerResourceRecord -zonename ngcp62.ph -A -name p2 -ipv4address 10.62.100.102
add-DnsServerResourceRecord -zonename ngcp62.ph -A -name c1 -ipv4address 10.62.50.6
add-DnsServerResourceRecord -zonename ngcp62.ph -A -name c2 -ipv4address 10.62.50.8
add-DnsServerResourceRecord -zonename ngcp62.ph -A -name ap -ipv4address 10.62.10.3
