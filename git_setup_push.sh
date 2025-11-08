#!/bin/bash

# Prompt user for input
read -p "Enter Git User Name: " user
read -p "Enter Git Email: " mail
read -p "Enter commit Message: " msg
read -p "Enter repo URL: " url
read -p "Enter branch name: " branch

# Configure Git user
git config --global user.name "$user"
git config --global user.email "$mail"

# Initialize repository and push changes
git init
git add .
git commit -m "$msg"
git branch -M "$branch"
git remote add origin "$url"
git push -u origin "$branch"
