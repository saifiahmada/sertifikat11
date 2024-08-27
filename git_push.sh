#!/bin/bash

# Memeriksa apakah argumen diberikan
if [ -z "$1" ]; then
    # Jika tidak ada argumen, gunakan pesan default
    commit_message="Update: $(date '+%Y-%m-%d %H:%M:%S')"
else
    # Jika ada argumen, gunakan sebagai pesan commit
    commit_message="$1"
fi

git add .
git commit -m "$commit_message"
git push -u origin main

