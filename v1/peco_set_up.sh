#!/bin/zsh

set -e

echo "pecoの設定を.zshrcにいれますか? (yes/no)"
read Answer < /dev/tty
case ${Answer} in
  y|Y|yes)
    echo "
      # peco settings
      ## 過去に実行したコマンドを選択。ctrl-rにバインド。
      function peco-select-history() {
        BUFFER=\$(\history -n -r 1 | peco --query \"\$LBUFFER\")
        CURSOR=\$#BUFFER
        zle clear-screen
      }
      zle -N peco-select-history
      bindkey '^R' peco-select-history
      
      ## 過去に実行したディレクトリ移動を選択。ctrl-gにバインド。
      if [[ -n \$(echo \${^fpath}/chpwd_recent_dirs(N)) && -n \$(echo \${^fpath}/cdr(N)) ]]; then
          autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
          add-zsh-hook chpwd chpwd_recent_dirs
          zstyle ':completion:*' recent-dirs-insert both
          zstyle ':chpwd:*' recent-dirs-default true
          zstyle ':chpwd:*' recent-dirs-max 1000
          zstyle ':chpwd:*' recent-dirs-file \"\$HOME/.cache/chpwd-recent-dirs\"
      fi
      
      function peco-cdr () {
        local selected_dir=\"\$(cdr -l | sed 's/^[0-9]\+ \+//' | peco --prompt=\"cdr >\" --query \"\$LBUFFER\")\"
        if [ -n \"\$selected_dir\" ]; then
          BUFFER=\"cd \`echo \$selected_dir | awk '{print\$2}'\`\"
          CURSOR=\$#BUFFER
          zle reset-prompt
        fi
      }
      zle -N peco-cdr
      bindkey '^G' peco-cdr
      " >> ~/.zshrc
    echo ".zshrc に設定を追加しました"
    ;;

  n|N|no)
    echo "pecoの設定をスキップしました"
    ;;
esac
