#!/bin/bash

# Get the current branch name
branch=$(git rev-parse --abbrev-ref HEAD)

# Get the commit messages from the last day (or any period you want)
commit_messages=$(git log --since="5 day ago" --pretty=format:"%h - %s" --no-merges)

# Check if there are any commit messages
if [ -z "$commit_messages" ]; then
  commit_messages="No commits in the last day."
fi

# Print the status update
echo "can make statment for Stand-up Meeting Status using this git messages"
echo "========================"
echo "Branch: $branch"
echo "Commits in the last day:"
echo "$commit_messages"
