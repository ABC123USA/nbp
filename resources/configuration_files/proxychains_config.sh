#!/bin/bash
# by Osaroprime
# GENERAL CONSULTING ABC 123 BY OSAROPRIME
# NATION BUILDER PRO ™
# MAGNETRON TECHNOLOGY ™ RESEARCH INSTALLATION SCRIPT.

# Paths to the proxychains configuration files
files=("/usr/local/etc/proxychains.conf" "/etc/proxychains.conf")

# Function to perform the changes on a given file
edit_proxychains_conf() {
    local file=$1

    # Ensure the file exists before proceeding
    if [ -f "$file" ]; then
        echo "Editing $file..."

        # Ensure read permissions for the file
        sudo chmod u+rw "$file"


        # Use sed to modify the contents of the file
        sudo sed -i '
            # Uncomment the line with "dynamic_chain" (10th line)
            s/^#dynamic_chain/dynamic_chain/

            # Comment the line with "strict_chain"
            s/^strict_chain/#strict_chain/

            # Uncomment the line with "proxy_dns" (if commented)
            s/^#proxy_dns/proxy_dns/

            # Add "socks5 127.0.0.1 9050" after the last line "socks4 127.0.0.1 9050"
            /socks4 127.0.0.1 9050/a\socks5 127.0.0.1 9050
        ' "$file"



        echo "Changes applied successfully to $file"
    else
        echo "File $file does not exist. Skipping..."
    fi
}

# Loop over each file and apply the changes
for file in "${files[@]}"; do
    edit_proxychains_conf "$file"
done
