# general
export PATH="/Users/jaequery/Library/Application Support/GoodSync":"/Users/jaequery/lib/bin":"/Users/jaequery/lib/share/pear":$PATH

# goodsync
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH="/Users/jaequery/Library/Application Support/GoodSync":$PATH

# git highlighter
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '

# ec2
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
#export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
#export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
#export EC2_AMITOOL_HOME="/usr/local/Cellar/ec2-ami-tools/1.6.6.0/jars"
#export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.6.6.0/jars"
#source $HOME/.ec2/aws-keys

# ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile

# sourcetree / git
alias sourcetree='open -a SourceTree .'
