export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"
export PATH="$PATH:$HOME/Library/Python/3.8/bin"
export PATH=$PATH:$HOME/fvm/default/bin

# git-promptの読み込み
source ~/dotfiles/git/git-prompt.sh

# git-completionの読み込み
fpath=(~/dotfiles/git $fpath)
zstyle ':completion:*:*:git:*' script ~/dotfiles/git/git-completion.bash
autoload -Uz compinit && compinit

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=auto
GIT_PS1_SHOWSTASHSTATE=""


setopt PROMPT_SUBST ; PS1='%F{cyan}[%n@%m] %F{white}%~%B%F{red}$(__git_ps1 " (%s)")%b%f
$ '

#アスキーアート表示
figlet -f standard Keep going ! !
figlet -f standard Keep going ! !