# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# 環境変数の設定 
export PATH=$PATH:/usr/local/Homebrew/bin
export PATH="$PATH:$HOME/Library/Python/3.8/bin"
export PATH=$HOME/fvm/default/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export JAVA_HOME=$(/usr/libexec/java_home -v 11)
export PATH="$PATH":"$HOME/.maestro/bin"

# グローバルにインストールしたDartPackageのコマンドを使えるようにする
# melos や riverpod_graph など
export PATH=$PATH:$HOME/.pub-cache/bin


# エイリアスの設定
alias lg='lazygit'
alias path="echo $PATH | tr ':' '\n'" # pathを見やすく表示
alias ll='ls -l' # 現在のディレクトリ内の一覧+権限も表示

# flutter周りのalias
alias f='fvm'
alias ff='fvm flutter'
alias ffv='fvm flutter --version'
alias ffp='fvm flutter pub'
alias ffpg='fvm flutter pub get'
alias ffprbw='fvm flutter pub run build_runner watch --delete-conflicting-outputs'
alias ffprbb='fvm flutter pub run build_runner build --delete-conflicting-outputs'

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

# ここでflutterコマンドのpathが/Users/ka_mori/.asdf/shims/flutterに設定されている。
# fvmでバージョン管理したい場合は、ここを削除する必要がある。
# . /usr/local/opt/asdf/libexec/asdf.sh

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
export PATH=$PATH:$HOME/.maestro/bin
