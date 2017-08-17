# config for python lib 'thefuck'
eval "$(thefuck --alias)"
eval "$(thefuck --alias fuck)"

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# linux core bash命令, mac是-G, linux是--color=auto
#alias ls='ls --color=auto'
#alias ls='ls -G'
alias vim="mvim -v"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias tree1="tree -L 1"
alias cpwd="pwd | tr -d '\n' | pbcopy"
alias https="http --default-scheme=https"
alias lld="ls -l | grep ^d"
alias df='df -h'
alias du='du -h -c'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias sb="source ~/.bash_profile"
alias vb="vim ~/.bash_profile"
alias vz="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'
alias vimrc='vim ~/.vimrc'
alias wp='which python3'
alias vf='vim ~/.fabric_scripts/fabfile.py'

export PIPENV_SHELL_COMPAT=1

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HOMEBREW_GITHUB_API_TOKEN=10563f6a4a253a1f0a75040de9a8593d95d87384
#export HOMEBREW_CASK_OPTS="--caskroom=/opt/homebrew-cask/Caskroom"
export HOMEBREW_NO_AUTO_UPDATE=true

export JAVA_HOME=$(/usr/libexec/java_home)
#go environment
export GOPATH=/Users/sunwei/Documents/go
#groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

#hadoop
#export HADOOP_USER_CLASSPATH_FIRST=true
#export HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar
export HADOOP_LOG_DIR=/Volumes/Transcend/hadoop/logs
export HADOOP_PID_DIR=/Volumes/Transcend/hadoop/pids
export YARN_LOG_DIR=/Volumes/Transcend/hadoop/logs/yarn
export YARN_PID_DIR=/Volumes/Transcend/hadoop/pids/yarn
export HADOOP_MAPRED_LOG_DIR=/Volumes/Transcend/hadoop/logs/mapred
export HADOOP_MAPRED_PID_DIR=/Volumes/Transcend/hadoop/pids/mapred

#hive
export HADOOP_HOME=/usr/local/opt/hadoop/libexec
export HIVE_HOME=/usr/local/Cellar/hive/1.2.1
export HCAT_HOME=$HIVE_HOME/hcatalog

#hbase
export HBASE_HOME=/usr/local/Cellar/hbase/1.2.5

#kylin
export KYLIN_HOME=/usr/local/Cellar/kylin/1.6.0
export HIVE_CONF=$HIVE_HOME/conf

#export HADOOP_CLASSPATH=$HIVE_HOME/lib/hive-serde-1.2.1.jar
#export HBASE_CLASSPATH=$HIVE_HOME/lib/hive-serde-1.2.1.jar

export GEARPUMP_HOME=/Users/sunwei/MyLib/gearpump-2.11-0.8.0

# siege用来压测http请求的 #siege -c 1000 -t 5s http://xxxxxx
export SIEGE_HOME=/usr/local/Cellar/siege/4.0.1

# alluxio hadoop2.7
export ALLUXIO_HOME=/Users/sunwei/MyLib/alluxio-1.3.0

# predictionIO
export PIO_HOME=/Users/sunwei/MyLib/predictionIO/PredictionIO-0.9.5

# python 科学计算发行版
export CONDA_HOME=/Users/sunwei/miniconda3

# mahout
export MAHOUT_LOCAL=true # for running standalone on your dev machine,
# unset MAHOUT_LOCAL for running on a cluster

export GSED_HOME=/usr/local/opt/gnu-sed/libexec
# Gsed man page
#export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

export GAWK_HOME=/usr/local/opt/gawk
# Gawk man page
#export MANPATH="/usr/local/opt/gawk/share/man:$MANPATH"

export GFIND_HOME=/usr/local/opt/findutils/libexec
#export MANPATH=$GFIND_HOME/gnuman:$MANPATH

# gnu coreutils man
#export MANPATH=$(brew --prefix coreutils)/libexec/gnuman:$MANPATH

#berkeley db for scrapy-deltafetch
export BERKELEYDB_DIR=$(brew --cellar)/berkeley-db@4/4.8.30

#scala2.11
export SCALA211_HOME=/usr/local/opt/scala@2.11

#export PATH=$(brew --prefix coreutils)/libexec/gnubin:$GSED_HOME/gnubin:$GAWK_HOME/bin:$GFIND_HOME/gnubin:$KYLIN_HOME/bin:$HBASE_HOME/bin:$HIVE_HOME/bin:/usr/local/sbin:/usr/local/bin:$GEARPUMP_HOME/bin:$ALLUXIO_HOME/bin:$PIO_HOME/bin:$PATH
export PATH=$KYLIN_HOME/bin:$HBASE_HOME/bin:$HIVE_HOME/bin:/usr/local/sbin:$GEARPUMP_HOME/bin:$ALLUXIO_HOME/bin:$PIO_HOME/bin:$PATH
#export GIT_PATH=/Users/sunwei/Documents/gitLocalRepo
#export http_proxy="socks5://127.0.0.1:1080"
#export https_proxy="socks5://127.0.0.1:1080"
# Astrill proxy
#export http_proxy="http://127.0.0.1:3213"
#export https_proxy="http://127.0.0.1:3213"
## polipo proxy
#export http_proxy="http://127.0.0.1:8123"
#export https_proxy="http://127.0.0.1:8123"
#unset http_proxy
#unset https_proxy
#function cd() { builtin cd ${1:-$HOME} && ls; }

#Mongo shell will use EDITOR to edit something
#Scrapy also use $EDITOR
export EDITOR=vim
#export GRADLE_OPTS="-Xmx1024m -XX:MaxPermSize=128M -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8787"

export NVM_DIR="/Users/sunwei/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#tinyproxy -> asciidoc
export XML_CATALOG_FILES=/usr/local/etc/xml/catalog


#自动启动docker
#docker-machine start default 2>/dev/null
#eval `docker-machine env default`

# 设置pyspark使用python3
export PYSPARK_PYTHON=python3
export PYSPARK_DRIVER_PYTHON=ipython3

# 设置history存储长度, 默认是10000
# How many lines of history are kept is configured through
# the variables HISTSIZE and SAVEHIST.
# HISTSIZE is the maximum number of lines that are kept in a session
export HISTSIZE=100000
# SAVEHIST is the maximum number of lines that are kept in the history file.
export SAVEHIST=100000

# openssl hue require
LDFLAGS=-L/usr/local/opt/openssl/lib
CPPFLAGS=-I/usr/local/opt/openssl/include

# python.jobbole.com/87691/ matplotlib显示中文
export PYTHONIOENCODING="utf8"
# autoenv python大神之作品, .env使用
source /usr/local/opt/autoenv/activate.sh
# airflow
export AIRFLOW_HOME=/Volumes/Transcend/airflow

#pdir2
export PYTHONSTARTUP=$HOME/.pythonstartup
