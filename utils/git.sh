# http://stackoverflow.com/questions/17983068/delete-local-git-branches-after-deleting-them-on-the-remote-repo
git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | grep -v "staging" | xargs -n 1 git branch -d

# change remote
git remote set-url origin git://new.url.here
git remote -v

# rename branch
# https://gist.github.com/lttlrck/9628955
git checkout old_branch
git branch -m old_branch new_branch         # Rename branch locally
git push origin :old_branch                 # Delete the old branch
git push --set-upstream origin new_branch   # Push the new branch, set local branch to track the new remote


# reset hard for remote
# git reset HEAD^ --hard
git push origin/master --force
git fetch
# git reset origin/master --hard

# get sha1
# http://stackoverflow.com/a/949391/3809076
git rev-parse --short HEAD
# get branch name
# http://stackoverflow.com/a/11868440/3809076
git rev-parse --abbrev-ref HEAD
