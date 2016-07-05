POSTGRES_PLIST=~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

if test -f $POSTGRES_PLIST
then
  alias pg.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
  alias pg.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
else
  alias pg.start="brew services start postgresql"
  alias pg.stop="brew services stop postgresql"
fi
