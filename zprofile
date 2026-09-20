# Order of Zsh config files being read:
# /etc/zshenv
# ~/.zshenv
# /etc/zprofile
# macOS runs path_helper (invoked from /etc/zprofile)
# ~/.zprofile
# /etc/zshrc
# ~/.zshrc
# /etc/zlogin
# ~/.zlogin

path=(
  ~/bin
  /opt/homebrew/bin
  $path
  ~/.local/bin
)
