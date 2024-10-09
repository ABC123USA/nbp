#!/bin/bash
# by Osaroprime/Dr. Osaro Harriott PhD)
# GENERAL CONSULTING ABC 123 BY OSAROPRIME ™


# Start or restart tor service
if sudo brew services list | grep -q "tor.*started"; then
    echo "Tor service is already running. Restarting..."
    sudo brew services restart tor
else
    echo "Starting Tor service..."
    sudo brew services start tor
fi

# Get the original IP address
original_ip=$(curl -s http://httpbin.org/ip | jq -r '.origin')

# Get the IP address using Tor via socks5 proxy
tor_ip=$(curl -s --socks5-hostname 127.0.0.1:9050 http://httpbin.org/ip | jq -r '.origin')

# Get the IP address using proxychains4
proxychains_ip=$(proxychains4 curl -s http://httpbin.org/ip | jq -r '.origin')

# Compare IPs and check for errors
if [[ "$original_ip" == "$tor_ip" || "$original_ip" == "$proxychains_ip" ]]; then
    echo "Proxy Server Setup Error. Try again later!"
    sudo brew services stop tor
    exit 1
else
    echo "Proxy Server Setup Successful"
    exit 0
fi
