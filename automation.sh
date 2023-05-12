#!/usr/bin/env bash

# initialize a git repository in the current directory
git init

# ask for the git remote link
read -p "Enter the git remote link for the repository: " remote_link

# add the remote link to the git repository
git remote add origin $remote_link

# stage all changes
git add .

# rename the default branch to main
git branch -M main

# make an initial commit
git commit -m "Initial commit"

# push to the remote repository with authentication
expect << EOF
spawn git push -u origin main
expect "Username for 'https://github.com': "
send "snakexrnt\n"
expect "Password for 'https://snakexrnt@github.com': "
send "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\n"
expect eof
EOF
