# 環境変数の設定 
export PATH=$PATH:/usr/local/Homebrew/bin
export PATH="$PATH:$HOME/Library/Python/3.8/bin"
export PATH=$HOME/fvm/default/bin:$PATH
export PATH=$PATH:/usr/local/go/bin


# エイリアスの設定
alias lg='lazygit'
alias path="echo $PATH | tr ':' '\n'"

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