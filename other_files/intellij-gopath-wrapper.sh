gopath=$1
command=$2

export GOPATH=$gopath
# export PATH=$gopath/bin:$PATH

exec $command
