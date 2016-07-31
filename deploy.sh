#!/bin/bash

hugo --theme=Hugo-Octopress

# everything below copied from https://gohugo.io/tutorials/github-pages-blog/

cd public
# Add changes to git.
git add -A

# Commit changes.
msg="Rebuild site `date`"
if [ $# -eq 1 ]
    then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ..
