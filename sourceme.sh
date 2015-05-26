#! /bin/bash

export PATH=$PATH:./bin

alias serve='hugo server -w'
alias deploy='deploy.sh'

cat << EOF
hugo new [content path] #for creating a new page 

serve #for testing website locally

deploy [commit message] #for deploying website to production
EOF
