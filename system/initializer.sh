source "$HOME/dotfiles/system/helpers.sh"
source "$HOME/dotfiles/git/helpers.sh"
source "$HOME/dotfiles/tmux/helpers.sh"
source "$HOME/dotfiles/development/helpers.sh"

# import temp settings (e.g. for current project), should be last
if [ -f "$HOME/dotfiles/system/temp_settings.sh" ]; then
  source "$HOME/dotfiles/system/temp_settings.sh"
fi
