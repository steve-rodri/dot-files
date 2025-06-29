#!/bin/sh

WINDOW_NAME="AI"

if [ -n "$TMUX" ]; then
    # Inside tmux: create a new window in the current session
    tmux new-window -n "$WINDOW_NAME"
    tmux send-keys -t "$WINDOW_NAME".0 'claude' C-m
    tmux split-window -h -t "$WINDOW_NAME".0
    tmux send-keys -t "$WINDOW_NAME".1 'gemini' C-m
    tmux select-pane -t "$WINDOW_NAME".0
    tmux split-window -h -t "$WINDOW_NAME".0
    tmux send-keys -t "$WINDOW_NAME".2 'codex' C-m
    tmux select-layout -t "$WINDOW_NAME" even-horizontal
    tmux setw -t "$WINDOW_NAME" synchronize-panes on
    tmux select-window -t "$WINDOW_NAME"
else
    # Outside tmux: use your existing script for a new session
    SESSION="ai_clis"
    tmux kill-session -t "$SESSION" 2>/dev/null
    tmux new-session -d -s "$SESSION" 'claude'
    tmux split-window -h -t "$SESSION":0
    tmux send-keys -t "$SESSION":0.1 'gemini' C-m
    tmux select-pane -t "$SESSION":0.0
    tmux split-window -h -t "$SESSION":0.0
    tmux send-keys -t "$SESSION":0.2 'codex' C-m
    tmux select-layout -t "$SESSION":0 even-horizontal
    tmux setw -t "$SESSION":0 synchronize-panes on
    tmux attach-session -t "$SESSION"
fi
