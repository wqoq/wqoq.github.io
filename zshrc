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

autoload -U compinit; compinit

# Use Emacs key-bindings
bindkey -e
# Use Ctrl+B/F for back/fwd word instead of Alt (back/fwd char)
bindkey '^B' backward-word
bindkey '^F' forward-word
bindkey '^[b' backward-char
bindkey '^[f' forward-char

eval `gdircolors ~/.dircolors`

# Prompt
export PS1='%F{#0080FF}[%m:%3~] %n%#%f '

export PAGER=less

# Aliases
alias lo=logout
alias ls='gls --color -CF'
alias ll='ls -l'
alias la='ls -al'
alias lt='ll -t'
#alias m='less -FIMRX'
alias less='less -cIRM'
alias m=less
alias f=finger
alias bashrc='source ~/.bashrc'
alias psx="ps -ajxww"
alias psm='psx|grep $USER'
alias grep='grep -s'
alias igrep='grep -i'
alias strings='strings -'
alias zshrc='source ~/.zshrc'
alias mv='gmv -vi --strip-trailing-slashes'
alias mkdir='mkdir -p'

man() {
  LESS_TERMCAP_mb=$(tput bold; tput setaf 1) \
  LESS_TERMCAP_md=$(tput bold; tput setaf 1) \
  LESS_TERMCAP_me=$(tput sgr0) \
  LESS_TERMCAP_se=$(tput sgr0) \
  LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) \
  LESS_TERMCAP_ue=$(tput sgr0) \
  LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 2) \
  LESS_TERMCAP_mr=$(tput rev) \
  LESS_TERMCAP_mh=$(tput dim) \
  LESS_TERMCAP_ZN=$(tput ssubm) \
  LESS_TERMCAP_ZV=$(tput rsubm) \
  LESS_TERMCAP_ZO=$(tput ssupm) \
  LESS_TERMCAP_ZW=$(tput rsupm) \
  GROFF_NO_SGR=1 \
  command man "$@"
}
