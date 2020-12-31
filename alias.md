######################### ALIAS ###############################
###############################################################

alias setAlias="pico ~/.zshrc"

# avdmanager, sdkmanager
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin

# adb, logcat
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

# postgresql
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

# git
alias gc="git checkout "$1""
alias gaa="git add ."
alias gca="git commit -m "$1""
alias gpo="git branch | grep \* | cut -d ' ' -f2 | xargs git push origin"
alias gpon="git branch | grep \* | cut -d ' ' -f2 | xargs -I git push origin % --no-verify"
alias gpm="git pull origin master"
alias gph="git push heroku master"