#!/bin/bash
# by Osaroprime/Dr. Osaro Harriott (PhD)
# GENERAL CONSULTING ABC 123 BY OSAROPRIME
# NATION BUILDER PRO ™
# MAGNETRON TECHNOLOGY ™ RESEARCH INSTALLATION SCRIPT.

# Nation Builder Pro ™
# color
# Reset

# NATION BUILDER PRO ™ VERSION NUMBER
version=1.1

# NATION BUILDER PRO: GEO-LOCATION ™ VERSION NUMBER
sversion=1.0



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

# GEO-LOCATION BANNER
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
    echo -e "${GREEN}                                    version $sversion               			               "
    echo -e "${GREEN}                     MAGNETRON TECHNOLOGY ™ RESEARCH: LUCI-4 ™               		       "               
    echo -e "${RED}################################################################################################"
}


# FUNCTION FOR IP ADDRESS INFO
function ip_info(){
    while true; do
        banner
        echo -e "${CP}\n[*] Enter 1 to enter an IP address"
        echo -e "${CP}\n[*] Enter 2 to return to the Main Menu"
        echo -e -n "${CP}\n[*] Choice: "
        read choice

        case $choice in
            1)
                #echo -e -n "${CP}\n[*] Enter Target IP: "
                #read ip
                # Proceed with the IP info retrieval process
                fetch_ip_info "$ip"
                ;;
            2)
                echo -e "${GREEN}\n[*] Returning to the Main Menu..."
                return
                ;;
            *)
                echo -e "${RED}\n[!] Invalid choice, please try again."
                ;;
        esac
    done
}





# FUNCTION FOR IP ADDRESS INFO

function fetch_ip_info(){
    #banner
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













# MAIN MENU
function main_menu(){
    while true; do
        clear
        echo -e "${GREEN}========== MAIN MENU =========="
        echo -e "${GREEN}[1] Run IP Info"
        echo -e "${GREEN}[2] Exit"
        echo -e -n "${CP}[*] Select an option: "
        read option
        
        case $option in
            1)
                ip_info
                ;;
            2)
                echo -e "${GREEN}[*] Exiting. Goodbye!"
                exit 0
                ;;
            *)
                echo -e "${RED}[!] Invalid choice, please try again."
                ;;
        esac
    done
}

# Start the script
main_menu

