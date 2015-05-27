#! /bin/bash

DIRECTORY=`pwd -P`

##################################33

export PATH=$PATH:$DIRECTORY/src/web_bin


# D and F flags mean that all future posts and drafts are shown on the localhost preview serve
alias new='_new'
alias serve='_serve'
alias deploy='deploy.sh'
alias cleanup='_cleanup'

cat << EOF
#############
TotalSim Website
#############
Available Commands:
    new [path]      for creating a new page, use .md suffix!
                    e.g. new wiki/HONDA/wikipage.md
                    e.g. new news/newspage.md
    serve           for testing website locally
    deploy          for deploying website to production
    cleanup         for cleaning path and aliases after done working with website
    user [username] [group]
EOF


function _new(){
    hugo --source="$DIRECTORY/src" --config="$DIRECTORY/src/config.toml" new "$1"   
}

function _cleanup(){
    export PATH=`echo ${PATH} | awk -v RS=: -v ORS=: '/web_bin/ {next} {print}' | sed 's/:*$//'`
    unalias new
    unalias serve
    unalias deploy
    unalias cleanup
}

function _serve(){
    wiki -config="$DIRECTORY/src/config.toml" -directory="$DIRECTORY/content/wiki" -replace="DIRECTORY"
    rm -rf public 
    hugo server -w --baseUrl="http://localhost:1313" -D -F --source="$DIRECTORY/src" --config="$DIRECTORY/src/config.toml"

}