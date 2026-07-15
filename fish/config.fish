

if status is-interactive
    # Commands to run in interactive sessions can go here
end
if status is-interactive
and not set -q TMUX
    exec tmux
end
set fish_greeting
#Powerline
# set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
# source /usr/share/powerline/bindings/fish/powerline-setup.fish
# powerline-setup
set fish_cursor_default block
set fish_cursor_insert line
function fish_user_key_bindings
    fish_vi_key_bindings
    bind --mode insert --sets-mode default jk repaint
end
bind --mode insert --sets-mode default jk repaint


function fish_mode_prompt
end

# Oh My Posh
#Environment Variables
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/bin"
pokeget random --hide-name | fastfetch --file-raw -
echo -e "\n\n"
oh-my-posh init fish --config '/home/devin/.config/oh-my-posh/themes/sonicboom_dark_custom.json' | source

# pnpm
set -gx PNPM_HOME "/home/devin/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Added by Quartus Prime software
export SALT_LICENSE_FILE="$SALT_LICENSE_FILE;/home/devin/.altera.quartus/questa_lic.dat"
