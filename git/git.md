1. git add xxx: add xxx file to cache area
2. git commit -m "....": commit change to current branch
3. git rm --cache xxx: remove xxx from cached area and I don't want to track this file
	- git restore --stage xxx: remove xx from cached area and I still kill track of this file
4. git diff: check difference between your current workspace and cached workspace
5. git log: check all version in your current branch
6. git reflog: check HEAD pointer moving history
7. git reset:
	- git reset --hard HEAD^ or git reset --hard HEAD~: revert back to previous version
	- git reset --hard HEAD^^: revert back to the last two version
	- git reset --hard HEAD~100: revert back 100 versions
	- git reset --hard <version-num>: revert to a specific version
8. branch
	- git branch: check all branch and current branch
	- git checkout branch_name: switch to the branch
	- git branch -d branch_name: delete a branch
	- git merge branch_name: merge the branch with name to the current branch
	- git branch branch_name: create a new branch
	- git push --set-upstream origin branch_name: map local branch_name to remote branch_name
	- git push --set-upstream-to=origin/branch_name1 branch_name2: map remote branch_1 to local branch_name2
	- git checkout -t origin/branch_name: fetch remote branch to local
9. stash
	- git stash: save workspace and cached to stack
	- git stash apply: restore stack top to current branch but not remove stack top
	- git stash drop: remove stack top
	- git stash pop: restore stack topmto current branch and remove stack top
	- git stash list: check all elements in the stack
10. git restore: remove all uncached file.
