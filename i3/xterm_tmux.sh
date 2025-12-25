# ~/bin/xterm_tmux.sh
#!/bin/bash

# Detect autorandr profile
PROFILE=$(autorandr | grep current | awk '{print $1}')

# Set font size depending on monitor setup
if [ "$PROFILE" = "dual" ]; then
    FS=18   # Larger font for external display
else
    FS=14   # Smaller font for laptop
fi

# Launch xterm with Fira Code, tmux session, inheriting font size
xterm -fa 'FiraCode' -fs $FS -e tmux new-session -A -s main
