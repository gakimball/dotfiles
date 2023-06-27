#!/bin/zsh

plugins_file="plugins"
target_directory="$ZSH_CUSTOM/plugins"
current_directory=$(pwd)

while IFS=' ' read -r repo_url folder_name || [[ -n "$repo_url" ]]; do
    if [[ -z "$folder_name" ]]; then
        repo_name=$(basename "$repo_url" .git)
    else
        repo_name="$folder_name"
    fi

    repo_directory="$target_directory/$repo_name"

    if [[ ! -d "$repo_directory" ]]; then
        git clone "$repo_url" "$repo_directory"
    else
        echo "Syncing $repo_url in $repo_name..."
        cd "$repo_directory"
        git pull
    fi

    echo
done < "$plugins_file"

# Restore the current working directory
cd "$current_directory"
