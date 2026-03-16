test ! -e "$HOME/.x-cmd.root/local/data/fish/rc.fish" || source "$HOME/.x-cmd.root/local/data/fish/rc.fish" # boot up x-cmd.
if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /opt/miniconda3/etc/fish/conf.d/conda.fish

function proxy
  set -xg ALL_PROXY http://10.20.1.117:7890
  #set -xg ALL_PROXY socks5://10.10.1.38:1080
end

function noproxy
  set -e ALL_PROXY
end

export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

abbr -a kpu 	"cd /work/pytorch_kpu"

abbr -a lg	'lazygit'
abbr -a cm	'chezmoi'


fish_add_path /home/nfs/.pixi/bin

export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

