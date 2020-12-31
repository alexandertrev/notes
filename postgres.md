# alias to postgres server start and stop
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

# cannot connect to postgres
rm /usr/local/var/postgres/postmaster.pid