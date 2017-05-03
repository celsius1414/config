#tmux.conf Robert Daeley

#compensates for tmux command line bug on mac
#install reattach-to-user-namespace via homebrew
set-option -g default-command "/usr/local/bin/reattach-to-user-namespace -l bash || bash"

#number of colors
set -g default-terminal "screen-256color"

#change prefix key to ctrl-space instead of ctrl-b
unbind C-b
set -g prefix C-space

#creates a shortcut R to reload the config file
bind R source-file ~/.tmux.conf \; display-message "  Config reloaded...".

#UI
set -g mouse off
set -g base-index 1
setw -g pane-base-index 1
set-option -g renumber-windows on
set -sg escape-time 0

#show activity in background windows
setw -g monitor-activity on 

#switching panes
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

#resizing panes
bind-key -r J resize-pane -D 5
bind-key -r K resize-pane -U 5
bind-key -r H resize-pane -L 5
bind-key -r L resize-pane -R 5

#status line
set-option -g status-justify centre
set-option -g status-keys vi
set -g status-right "%d %b %R"

###############################################################################
#### COLOUR (Solarized 256) ####

# default statusbar colors
set-option -g status-bg colour235 #base02
set-option -g status-fg colour136 #yellow
set-option -g status-attr default

# default window title colors
set-window-option -g window-status-fg colour244 #base0
set-window-option -g window-status-bg default
#set-window-option -g window-status-attr dim

# active window title colors
set-window-option -g window-status-current-fg colour166 #orange
set-window-option -g window-status-current-bg default
#set-window-option -g window-status-current-attr bright

# pane border
set-option -g pane-border-fg colour235 #base02
set-option -g pane-active-border-fg colour240 #base01

# message text
set-option -g message-bg colour235 #base02
set-option -g message-fg colour166 #orange

# pane number display
set-option -g display-panes-active-colour colour33 #blue
set-option -g display-panes-colour colour166 #orange

# clock
set-window-option -g clock-mode-colour colour64 #green

