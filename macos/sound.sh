# Disable the sound effects on boot
# default: %80
sudo nvram SystemAudioVolume=%00

# Mute chime sound on boot
sudo nvram StartupMute=%01

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Stop iTunes from responding to the keyboard media keys
#launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Disable Speech Recognition.
# sudo defaults write "com.apple.speech.recognition.AppleSpeechRecognition.prefs" StartSpeakableItems -bool false

# Turn Bluetooth off (security)
# sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0