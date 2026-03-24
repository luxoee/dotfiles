# 基础操作
alias cz='chezmoi'
alias cza='chezmoi add --exact --recursive'
alias cze='chezmoi edit --apply' # 编辑后自动应用，省去一步
alias czcd='cd (chezmoi source-path)'

# 同步与应用
alias czap='chezmoi apply'
alias czu='chezmoi update'
alias czd='chezmoi diff'

# 状态查看
alias czs='chezmoi status'
alias czl='chezmoi managed'

# 快速提交并推送所有更改
function czsync
    set -l message (test -n "$argv"; and echo "$argv"; or echo "update: (date +'%Y-%m-%d %H:%M:%S')")
    chezmoi git -- add .
    chezmoi git -- commit -m "$message"
    chezmoi git -- push
end

# 编辑配置并立即查看差异（不直接 apply，更安全）
function czed
    chezmoi edit $argv
    and chezmoi diff
end

# 专门针对你刚配置的 Zellij
function czz
    chezmoi edit ~/.config/zellij/config.kdl
    and chezmoi apply
    and echo "Zellij config updated and applied!"
end

if not command -q chezmoi
    echo "Tip: chezmoi is not installed. Run 'curl -fsLS get.chezmoi.io | sh' to install."
end
