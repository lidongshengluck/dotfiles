#!/bin/sh

session_name="`users`"

session_exists() {
    tmux has-session  -t "$1" 2>/dev/null
}

new_session() {
    tmux new -d -s "$1"
    attach_session "$1"
}

attach_session() {
    tmux -2 attach -t "$1"
}

if session_exists "$session_name"; then
    attach_session "$session_name"
else
    new_session "$session_name"
fi
