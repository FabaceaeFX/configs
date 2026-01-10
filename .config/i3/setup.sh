#!/bin/bash
# Wait for i3 to start
sleep 2

# Open Notion in workspace 1
i3-msg 'workspace 2; exec zen --new-window https://www.notion.so;'
sleep 2

# Open Grafana in workspace 2
i3-msg 'workspace 7; exec zen --new-window https://grafana.example.com;'

