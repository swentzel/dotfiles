

echo "[+] Timezone ####################################"
# Set the timezone for your Continent/US-state/city:
# see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Europe/Berlin" > /dev/null

# Disable automatic termination of inactive apps
# defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"

# Restart automatically if the computer freezes
# sudo systemsetup -setrestartfreeze on

# Never go into computer sleep mode
# sudo systemsetup -setcomputersleep Off > /dev/null

# Prevent Time Machine from prompting to use new hard drives as backup volume
#defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable local Time Machine backups
#hash tmutil &> /dev/null && sudo tmutil disablelocal


# Install settings for MacOS Finder
echo "${WAITING}Running Finder..."; \
sudo ./macos/sound.sh
echo "${DONE}Finished Finder\n"; \

# Install settings for MacOS Finder
echo "${WAITING}Running Finder..."; \
sudo ./macos/finder.sh
echo "${DONE}Finished Finder\n"; \