#!/bin/bash

# Reset
RESET="\e[0m"

# Regular Colors (Foreground)
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[37m"

# Background Colors
BG_BLACK="\e[40m"
BG_RED="\e[41m"
BG_GREEN="\e[42m"
BG_YELLOW="\e[43m"
BG_BLUE="\e[44m"
BG_MAGENTA="\e[45m"
BG_CYAN="\e[46m"
BG_WHITE="\e[47m"

echo -e "${RED}=== Foreground Colors ===${RESET}"
echo -e "${BLACK}Black${RESET}"
echo -e "${RED}Red${RESET}"
echo -e "${GREEN}Green${RESET}"
echo -e "${YELLOW}Yellow${RESET}"
echo -e "${BLUE}Blue${RESET}"
echo -e "${MAGENTA}Magenta${RESET}"
echo -e "${CYAN}Cyan${RESET}"
echo -e "${WHITE}White${RESET}"

echo -e "\n${RED}=== Background Colors ===${RESET}"
echo -e "${BG_BLACK} Black BG ${RESET}"
echo -e "${BG_RED} Red BG ${RESET}"
echo -e "${BG_GREEN} Green BG ${RESET}"
echo -e "${BG_YELLOW} Yellow BG ${RESET}"
echo -e "${BG_BLUE} Blue BG ${RESET}"
echo -e "${BG_MAGENTA} Magenta BG ${RESET}"
echo -e "${BG_CYAN} Cyan BG ${RESET}"
echo -e "${BG_WHITE} White BG ${RESET}"

echo -e "\n${RED}=== Combined Foreground + Background ===${RESET}"
echo -e "${RED}${BG_WHITE} Red text on White background ${RESET}"
echo -e "${YELLOW}${BG_BLUE} Yellow text on Blue background ${RESET}"
echo -e "${CYAN}${BG_MAGENTA} Cyan text on Magenta background ${RESET}"
echo -e "${GREEN}${BG_BLACK} Green text on Black background ${RESET}"

echo -e "\n${RED}=== Styles ===${RESET}"
echo -e "\e[1mBold Text\e[0m"
echo -e "\e[4mUnderlined Text\e[0m"
echo -e "\e[7mReversed Colors\e[0m"

echo -e "\n${RED}=== 256 Color Mode (Foreground only) ===${RESET}"
for i in {0..15} 
do
    echo -e "\e[38;5;${i}mColor ${i}${RESET}"
done

echo -e "\n${RED}=== 256 Color Mode (Background only) ===${RESET}"
for i in {0..15} 
do
    echo -e "\e[48;5;${i}mColor ${i}${RESET}"
done
