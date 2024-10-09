#!/bin/bash
# by Osaroprime
# GENERAL CONSULTING ABC 123 BY OSAROPRIME
#NATION BUILDER PRO ™
# MAGNETRON TECHNOLOGY ™ RESEARCH INSTALLATION SCRIPT.

# Nation Builder Pro ™
# color
# Reset

clear='\033[0m'       # Text Reset
clr='\033[0m'
# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

version=1.1


# Define the number of lines in the banner (important for locking it at the top)
BANNER_LINES=50  # Increased for more space after the banner

# Show the static banner
show_banner() {
    tput cup 0 0
    echo -e "${clr}\n"
    printf "${BBlue} ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★\n"
    printf "${BRed} ███╗   ██╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗\n"
    printf "${BRed} ████╗  ██║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║\n"
    printf "${BRed} ██╔██╗ ██║███████║   ██║   ██║██║   ██║██╔██╗ ██║\n"
    printf "${BRed} ██║╚██╗██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║\n"
    printf "${BRed} ██║ ╚████║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║\n"
    printf "${BRed} ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝\n"
    printf "${BBlue}██████╗ ██╗   ██╗██╗██╗     ██████╗ ███████╗██████╗ ${BRed}██████╗ ██████╗  ██████╗ \n"
    printf "${BBlue}██╔══██╗██║   ██║██║██║     ██╔══██╗██╔════╝██╔══██╗${BRed}██╔══██╗██╔══██╗██╔═══██╗\n"
    printf "${BBlue}██████╔╝██║   ██║██║██║     ██║  ██║█████╗  ██████╔╝${BRed}██████╔╝██████╔╝██║   ██║\n"
    printf "${BBlue}██╔══██╗██║   ██║██║██║     ██║  ██║██╔══╝  ██╔══██╗${BRed}██╔═══╝ ██╔══██╗██║   ██║\n"
    printf "${BBlue}██████╔╝╚██████╔╝██║███████╗██████╔╝███████╗██║  ██║${BRed}██║     ██║  ██║╚██████╔╝\n"
    printf "${BBlue}╚═════╝  ╚═════╝ ╚═╝╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═╝${BRed}╚═╝     ╚═╝  ╚═╝ ╚═════╝ version $version \n"
    printf "${BRed}ImportError: ${BBlue}No module named 'SHIVA'\n"
    printf "=========================================================================================\n"
    printf "${White}by: ${BGreen}Osaroprime☢\n"
    printf "${White}by: ${BGreen}GENERAL CONSULTING ABC 123 BY OSAROPRIME ™  ☢\n"
    printf "${White}by: ${BGreen}MAGNETRON TECHNOLOGY ™ RESEARCH: LUCI-4 ☢\n"
    printf "${BGreen}Version ${BRed}$version \n"
    printf "${BRed} ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★\n"
    echo ""
}







# Initialize the terminal for a static banner
init_static_banner() {
    clear
    show_banner
    tput cup $BANNER_LINES 0
}





NC='\033[0m'
RED='\033[1;38;5;196m'
GREEN='\033[1;38;5;040m'
ORANGE='\033[1;38;5;202m'
BLUE='\033[1;38;5;012m'
BLUE2='\033[1;38;5;032m'
PINK='\033[1;38;5;013m'
GRAY='\033[1;38;5;004m'
NEW='\033[1;38;5;154m'
YELLOW='\033[1;38;5;214m'
CG='\033[1;38;5;087m'
CP='\033[1;38;5;221m'
CPO='\033[1;38;5;205m'
CN='\033[1;38;5;247m'
CNC='\033[1;38;5;051m'

function banner(){
    echo -e "${RED}################################################################################################"
    echo -e "${BLUE2}  ██████  ███████  ██████      ██       ██████   ██████  █████  ████████ ██  ██████  ███    ██ "
    echo -e "${BLUE2} ██       ██      ██    ██     ██      ██    ██ ██      ██   ██    ██    ██ ██    ██ ████   ██ "
    echo -e "${BLUE2} ██   ███ █████   ██    ██     ██      ██    ██ ██      ███████    ██    ██ ██    ██ ██ ██  ██ "
    echo -e "${BLUE} ██    ██ ██      ██    ██     ██      ██    ██ ██      ██   ██    ██    ██ ██    ██ ██  ██ ██ "
    echo -e "${BLUE}  ██████  ███████  ██████      ███████  ██████   ██████ ██   ██    ██    ██  ██████  ██   ████ "
    echo -e "${CP}                                               						       "
    echo -e "${GREEN}         		       	Nation Builder Pro ™        				       "
    echo -e "${RED}         		   IP GEOLOCATION (APPROXIMATE)        				       "
    echo -e "${RED}                          Coded By: Dr Osaro Harriott (PhD)                        	       "
    echo -e "${CNC}                         https://github.com/sponsors/GCABC123                 		       "
    echo -e "${GREEN}                           https://linktr.ee/ABC123USA               			       "
    echo -e "${GREEN}                                    version 1.0               			               "
    echo -e "${GREEN}                     MAGNETRON TECHNOLOGY ™ RESEARCH: LUCI-4 ™               		       "               
    echo -e "${RED}################################################################################################"
}



function ip_info(){
    banner
    echo -e -n "${CP}\n[*] Enter Target IP: "
    read ip

    # Display the available language codes
    echo -e -n "${CP}\n[*] LANGUAGE CODES"
    echo -e -n "${CP}\n[*] en    English (default)"
    echo -e -n "${CP}\n[*] de    Deutsch (German)"
    echo -e -n "${CP}\n[*] es    Español (Spanish)"
    echo -e -n "${CP}\n[*] pt-BR Português - Brasil (Portuguese)"
    echo -e -n "${CP}\n[*] fr    Français (French)"
    echo -e -n "${CP}\n[*] ja    日本語 (Japanese)"
    echo -e -n "${CP}\n[*] zh-CN 中国 (Chinese)"
    echo -e -n "${CP}\n[*] ru    Русский (Russian)"

    echo -e -n "${CP}\n[*] ENTER LANGUAGE CODE: "
    read language

    # Convert input to lowercase and validate
    language=$(echo "$language" | tr '[:upper:]' '[:lower:]')

    # List of valid languages
    valid_languages=("en" "de" "es" "pt-br" "fr" "ja" "zh-cn" "ru")

    # Check if input is in the valid languages
    if [[ ! " ${valid_languages[@]} " =~ " ${language} " ]]; then
        echo -e "${RED}\n[!] Invalid language code. Defaulting to English (en).\n"
        language="en"
    fi

    dest="http://ip-api.com/json/"
    echo -e -n "${RED}\n[ 🌐 ] [VICTIM IP]: $ip \n"

    # Fetch and store results in a variable
    results=$(curl -s "$dest$ip?lang=$language&fields=66846719")

    # Display parsed results using jq for each field
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [STATUS]: $(echo "$results" | jq -r '.status') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [CONTINENT 🌎]: $(echo "$results" | jq -r '.continent') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [CONTINENT CODE 🌎]: $(echo "$results" | jq -r '.continentCode') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [COUNTRY 🌎]: $(echo "$results" | jq -r '.country') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [REGION-NAME 🌎]: $(echo "$results" | jq -r '.regionName') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [CITY 🌎]: $(echo "$results" | jq -r '.city') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [DISTRICT]: $(echo "$results" | jq -r '.district') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [ZIPCODE]: $(echo "$results" | jq -r '.zip') ✔ \n"
    echo -e -n "${RED}\n[ 🌐 ]    ➟ [LATITUDE]: $(echo "$results" | jq -r '.lat') ✔ \n"
    echo -e -n "${RED}\n[ 🌐 ]    ➟ [LONGITUDE]: $(echo "$results" | jq -r '.lon') ✔ \n"
    echo -e -n "${ORANGE}\n[ 🌐 ] ➟ [ISP]: $(echo "$results" | jq -r '.isp') ✔ \n"
    echo -e -n "${ORANGE}\n[ 🌐 ] ➟ [ORGANIZATION]: $(echo "$results" | jq -r '.org') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [AS]: $(echo "$results" | jq -r '.as') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [ASNAME]: $(echo "$results" | jq -r '.asname') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [TIMEZONE]: $(echo "$results" | jq -r '.timezone') ✔ \n"
    echo -e -n "${BLUE}\n[ 🌐 ]   ➟ [OFFSET]: $(echo "$results" | jq -r '.offset') ✔ \n"
    echo -e -n "${YELLOW}\n[ 🌐 ] ➟ [CURRENCY]: $(echo "$results" | jq -r '.currency') ✔ \n"
    echo -e -n "${GREEN}\n[ 🌐 ]  ➟ [REVERSE DNS]: $(echo "$results" | jq -r '.reverse') ✔ \n"
    echo -e -n "${GREEN}\n[ 🌐 ]  ➟ [MOBILE 📲]: $(echo "$results" | jq -r '.mobile') ✔ \n"
    echo -e -n "${GREEN}\n[ 🌐 ]  ➟ [PROXY, VPN, TOR exit address]: $(echo "$results" | jq -r '.proxy') ✔ \n"
    echo -e -n "${GREEN}\n[ 🌐 ]  ➟ [HOSTING, COLOCATED OR DATA CENTER]: $(echo "$results" | jq -r '.hosting') ✔ \n"

    sleep 1
    echo -e -n "${RED}\n<--------Thanks For Using IP-Location Script--------->\n"
}






# Function to check for upgrades
check_for_upgrades() {
    echo -e "${Cyan}Checking for updates...${clear}"
    sudo brew update
    sudo brew upgrade jq coreutils nmap ffmpeg cmatrix snort tor proxychains-ng
    echo -e "${Cyan}Update check completed!${clear}"
}



# Function to exit the script
function exit_script() {
    echo "Exiting..."
    exit 0
}




# Function to search for open ports in a country
function search_ports_in_country() {
    read -p "Enter country code: " COUNTRY_CODE
    read -p "Enter IP version (ipv4/ipv6): " IP_VERSION
    read -p "Enter maximum number of scans (default $MAX_SCANS): " input_scans

    # Use input value if provided, otherwise use default MAX_SCANS
    if [[ -n $input_scans ]]; then
        MAX_SCANS=$input_scans
    fi

    perform_scan "$COUNTRY_CODE" "$IP_VERSION" $MAX_SCANS
    
    # After scanning, prompt the user to either scan again or return to the main menu
    read -p "Scan complete. Would you like to perform another scan? (y/n): " choice
    if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
        search_ports_in_country
    else
        show_menu  # Return to the main menu after the scan
    fi
}



TARGET_DIR="./resources/countries/cidr"
TARGET_DIR2="./resources/countries/ip"


# Function to download or update the CIDR database
update_cidr(){
    if [ -d "$TARGET_DIR" ]; then
        echo "Directory already exists: $TARGET_DIR"
    else
        mkdir -p "$TARGET_DIR"
        echo "Directory structure created at: $TARGET_DIR"
    fi

    if [ -d "$TARGET_DIR2" ]; then
        echo "Directory already exists: $TARGET_DIR2"
    else
        mkdir -p "$TARGET_DIR2"
        echo "Directory structure created at: $TARGET_DIR2"
    fi

    git clone https://github.com/herrbischoff/country-ip-blocks.git /tmp/country-ip-blocks
    rsync -av --progress /tmp/country-ip-blocks/ipv4 "$TARGET_DIR"
    rsync -av --progress /tmp/country-ip-blocks/ipv6 "$TARGET_DIR"

    find "$TARGET_DIR/ipv4" -name "*.cidr" -exec bash -c 'mv "$0" "${0%.cidr}.txt"' {} \;
    find "$TARGET_DIR/ipv6" -name "*.cidr" -exec bash -c 'mv "$0" "${0%.cidr}.txt"' {} \;

# After cloning, check if files exist for the specified country
    if [[ ! -f "$TARGET_DIR/ipv4/tt.txt" ]]; then
        echo "CIDR file for 'tt' not found. Please ensure the CIDR database is properly updated."
    fi

    rm -rf /tmp/country-ip-blocks
    echo "Update complete! Assets are saved in $TARGET_DIR"
}




generate_ips_from_cidr() {
    local cidr_block=$1
    local output_file=$2
    local max_scans=$3

    echo "Generating IPs for CIDR block: $cidr_block using nmap..."

    # Use nmap to list all IPs in the CIDR block
    nmap -n -sL "$cidr_block" | awk '/Nmap scan report/{print $NF}' | gshuf | head -n "$max_scans" > "$output_file"

    local total_ips=$(wc -l < "$output_file")
    echo "Generated $total_ips IPs from CIDR block $cidr_block saved to $output_file"
}





# Other functions...

# Fix in perform_scan function
perform_scan() {
    local COUNTRY_CODE=$1
    local IP_VERSION=$2
    local MAX_SCANS=$3
    local CIDR_FILE="$TARGET_DIR/$IP_VERSION/$COUNTRY_CODE.txt"

    if [[ ! -f "$CIDR_FILE" ]]; then
        echo "Error: No CIDR file found for country code '$COUNTRY_CODE' in $IP_VERSION."
        return
    fi

    mkdir -p "./resources/logs"
    DATE=$(date +"%Y%m%d_%H%M%S")
    LOG_FILE="./resources/logs/${COUNTRY_CODE}_${DATE}.txt"
    SCAN_COUNT=0

    echo "Performing nmap scan on $IP_VERSION addresses in $COUNTRY_CODE..."
    echo "CIDR file found at: $CIDR_FILE"

    # Shuffle the CIDR blocks and iterate through them
    gshuf "$CIDR_FILE" | while read -r cidr_block; do
        echo "Processing CIDR block: $cidr_block"

        generate_ips_from_cidr "$COUNTRY_CODE" "$IP_VERSION" $MAX_SCANS
        local SANITIZED_CIDR_BLOCK=$(echo "$cidr_block" | sed 's/\//_/g')
        echo "Sanitized CIDR block: $SANITIZED_CIDR_BLOCK"

        local IP_FILE_PATH="$TARGET_DIR2/$IP_VERSION/$COUNTRY_CODE/${COUNTRY_CODE}_$SANITIZED_CIDR_BLOCK.txt"
        echo "Looking for IP file at: $IP_FILE_PATH"

        if [[ ! -f "$IP_FILE_PATH" ]]; then
            echo "Error: No IP file found for CIDR block $cidr_block in $COUNTRY_CODE for $IP_VERSION."
            continue
        fi

        # Shuffle and scan the IPs
        gshuf "$IP_FILE_PATH" | while read -r ip_address; do
            if [[ $MAX_SCANS -ne 0 && $SCAN_COUNT -ge $MAX_SCANS ]]; then
                break 2
            fi

            echo "Scanning IP: $ip_address" | tee -a "$LOG_FILE"
            sudo proxychains4 nmap -sC -sS -sV --script vuln --open "$ip_address" | tee -a "$LOG_FILE"

            ((SCAN_COUNT++))
        done
    done

    echo "Scan Results saved in $LOG_FILE"
}




# Request sudo password once
if sudo -v; then
    # Keep sudo alive for the duration of the script
    while true; do sudo -n true; sleep 60; done 2>/dev/null &
else
    echo "Sudo access is required. Exiting..."
    exit 1
fi

# Trap to kill background process keeping sudo alive
trap 'kill $(jobs -p)' EXIT




# Start the processes
echo "Updating resources..."

# Start the update tasks, suppressing output
check_for_upgrades > /dev/null 2>&1 &
CHECK_UPGRADES_PID=$!  # Save the PID of check_for_upgrades


#update CIDR database
update_cidr > /dev/null 2>&1 &

# Play audio in the background, loop the music infinitely with -loop 0
ffplay -v 0 -nodisp -loop 0 ./resources/audio/audio.mp3 &
FFPLAY_PID=$!  # Save the PID of ffplay

# Trap EXIT signal to ensure ffplay process is terminated when the session exits
trap "kill -9 $FFPLAY_PID" EXIT

# Start cmatrix 
cmatrix -bs 
CMATRIX_PID=$!  # Save the PID of cmatrix
trap "kill -9 $CMATRIX_PID" EXIT


# Wait for both tasks to complete
wait $CHECK_UPGRADES_PID

# Output the success message
echo "Resources updated successfully!"

#Setup Proxy Chain

sudo chmod +rwx ./resources/proxy/proxy.sh

sudo ./resources/proxy/proxy.sh

echo "Nation Builder Pro ™ Proxy Server Setup is complete!"




# Check if tor service is running
if ! sudo brew services list | grep -q "tor.*started"; then
    echo "Tor service is not running. Waiting for 10 seconds..."
    sleep 10
    echo "Exiting script."
    exit 1
fi

# If Tor is running, continue to execute the rest of the code
echo "Tor service is running. Proceeding with script execution."


trap "sudo brew services stop tor" EXIT



# Stop cmatrix and ffplay after the updates finish


kill -9 $CMATRIX_PID
kill -9 $FFPLAY_PID
echo "Tasks completed and cmatrix/ffplay stopped."


# Display the banner only after all installs are completed
init_static_banner



MAX_SCANS=100  # Default value for MAX_SCANS

# MAX_SCANS=0 scans indefinitely

# Main script begins here
while true; do
    clear
    # Display the banner only after all installs are completed
    init_static_banner
    echo "MENU:"
    echo "1) Search for open ports in a country"
    echo "2) IP ADDRESS GEO-LOCATION"
    echo "3) Exit"
    read -p "Choose an option: " option

    case $option in
        1)
            ffplay -nodisp -autoexit ./resources/audio/audio2.mp3 &>/dev/null &
	    read -p "Enter country code: " country_code
            read -p "Enter IP version (ipv4/ipv6): " ip_version
            read -p "Enter maximum number of scans (default 100): " max_scans

            # Set defaults if necessary
            max_scans=${max_scans:-100}

            # Path to CIDR file (this is where your CIDR blocks are stored)
            cidr_file="./resources/countries/cidr/$ip_version/$country_code.txt"

            # Check if the CIDR file exists
            if [[ ! -f "$cidr_file" ]]; then
                echo "Error: CIDR file for $country_code and $ip_version not found."
                continue
            fi

            scan_count=0  # Initialize the scan counter

            # Read the CIDR block (assuming one CIDR block per line)
            while read -r cidr_block && [[ $scan_count -lt $max_scans ]]; do  # Stop if max_scans is reached
                echo "Processing CIDR block: $cidr_block"

                # Path to store generated IPs
                output_file="./resources/countries/ip/$ip_version/$country_code/${country_code}_${cidr_block//\//_}.txt"

                # Generate IPs for this CIDR block using nmap
                generate_ips_from_cidr "$cidr_block" "$output_file" "$max_scans"

                # Run the nmap scan on the generated IP addresses
                if [[ -f "$output_file" ]]; then
                    echo "Performing nmap scan on IP addresses in $output_file..."

                    # Iterate through each IP address in the file
                    while IFS= read -r ip && [[ $scan_count -lt $max_scans ]]; do
                        echo "Scanning IP address: $ip"
                        # Run nmap on the current IP
                        sudo proxychains4 nmap -sS -sV --script vuln --open -Pn "$ip" -oN ./resources/logs/${country_code}_$(date +%Y%m%d_%H%M%S)_${ip}.txt
                        ((scan_count++))  # Increment the scan count
                    done < "$output_file"

                else
                    echo "Error: No IPs were generated."
                fi

            done < "$cidr_file"

            ;;
 	2)
            ffplay -nodisp -autoexit ./resources/audio/audio2.mp3 &>/dev/null &
		clear 
 		while true; do
                    ip_info
                    echo -e -n "${CP}[*] Do you want to get GEO-LOCATION INFORMATION for another IP Address? (y/n): "
                    read again
                    if [[ "$again" != "y" ]]; then
                        break
                    fi
                done
                ;;
    
        3)
            ffplay -nodisp -autoexit ./resources/audio/audio2.mp3 &>/dev/null &
	    echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option, please try again."
            ;;
    esac
done





