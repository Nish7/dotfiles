# Snippets

## update casks
`brew list --casks > apps.txt`

## update/install vscode extentions 
update: `code --list-extensions | xargs -L 1 echo code --install-extension > vscode-extentions.txt`
install: `while read line; do code --install-extension "$line";done < vscode-extentions.txt`

## update vscode settings
`cat /Users/nish7/Library/Application\ Support/Code/User/settings.json > vscode-settings.json`

