Vim�UnDo� ��PZ|��&��j�).��{���+�Ӣ�N�4�v   w                                   `��    _�                     w        ����                                                                                                                                                                                                                                                                                                                                                             `�J    �   v               5�_�                    x       ����                                                                                                                                                                                                                                                                                                                                                             `��     �   w   x          4# Smart pane switching with awareness of Vim splits.   8# See: https://github.com/christoomey/vim-tmux-navigator   0is_vim="ps -o state= -o comm= -t '#{pane_tty}' \   A    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"   Fbind-key -n 'C-h' if-shell "$is_vim" 'send-keys C-h'  'select-pane -L'   Fbind-key -n 'C-j' if-shell "$is_vim" 'send-keys C-j'  'select-pane -D'   Fbind-key -n 'C-k' if-shell "$is_vim" 'send-keys C-k'  'select-pane -U'   Fbind-key -n 'C-l' if-shell "$is_vim" 'send-keys C-l'  'select-pane -R'   Gtmux_version='$(tmux -V | sed -En "s/^tmux ([0-9]+(.[0-9]+)?).*/\1/p")'   <if-shell -b '[ "$(echo "$tmux_version < 3.0" | bc)" = 1 ]' \   P    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\'  'select-pane -l'"   =if-shell -b '[ "$(echo "$tmux_version >= 3.0" | bc)" = 1 ]' \   R    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\\\'  'select-pane -l'"       -bind-key -T copy-mode-vi 'C-h' select-pane -L   -bind-key -T copy-mode-vi 'C-j' select-pane -D   -bind-key -T copy-mode-vi 'C-k' select-pane -U   -bind-key -T copy-mode-vi 'C-l' select-pane -R5�_�                     x        ����                                                                                                                                                                                                                                                                                                                                                             `��    �   w   x          -bind-key -T copy-mode-vi 'C-\' select-pane -l5��