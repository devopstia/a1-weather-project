read -r -p 'Commit message: ' desc  # prompt user for commit message
git add .                           # track all files
git commit -m "$desc"               # commit with message
git push -u origin master           # push to origin