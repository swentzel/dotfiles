# Bash Commands

### List all network services
networksetup -listallnetworkservices

    An asterisk (*) denotes that a network service is disabled.
    Wi-Fi
    Bluetooth PAN
    Thunderbolt Bridge

### List all network devices and order
networksetup -listnetworkserviceorder

    An asterisk (*) denotes that a network service is disabled.
    Wi-Fi
    Bluetooth PAN
    Thunderbolt Bridge
    [pf13ih@APM3LC02DC0CQMD6R ~] networksetup -listnetworkserviceorder
    An asterisk (*) denotes that a network service is disabled.
    (1) Wi-Fi
    (Hardware Port: Wi-Fi, Device: en0)

    (2) Bluetooth PAN
    (Hardware Port: Bluetooth-PAN, Device: en6)

    (3) Thunderbolt Bridge
    (Hardware Port: Thunderbolt Bridge, Device: bridge0)

## Network Locations

networksetup -getcurrentlocation
networksetup -listlocations
networksetup -createlocation <location name> [populate]
networksetup -deletelocation <location name>
networksetup -switchtolocation <location name>

### Switch network location to HomeOffice
networksetup -switchtolocation HomeOffice

### Switch network location to Home
networksetup -switchtolocation Home

## Network Proxy
networksetup -getwebproxy <networkservice>
networksetup -getsecurewebproxy <networkservice>
networksetup -getftpproxy <networkservice>
networksetup -getstreamingproxy <networkservice>
networksetup -getautoproxyurl <networkservice>
networksetup -getproxybypassdomains <networkservice>
networksetup -getgopherproxy <networkservice>
networksetup -getsocksfirewallproxy <networkservice>


networksetup -setsecurewebproxystate <networkservice> <on off>
networksetup -setsecurewebproxy <networkservice> <domain> <port number> <authenticated> <username> <password>
networksetup -setsecurewebproxystate <networkservice> <on off>
networksetup -setautoproxyurl <networkservice> <url>
networksetup -setautoproxystate <networkservice> <on off>

## Export PreProxy Configuration
https://www.serverlab.ca/tutorials/osx/administration-osx/configuring-a-network-proxy-for-osx/

    httpPreProxyServer=localhost:3128

    export http_proxy=$httpPreProxyServer
    export https_proxy=$httpPreProxyServer
    export HTTP_PROXY=$httpPreProxyServer
    export HTTPS_PROXY=$httpPreProxyServer