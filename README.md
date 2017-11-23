# Training

Training files  

## Contributing  
Clone the repository  
`git clone https://github.com/USCC-Dev/Training.git`  
Think of a 3 letter combination that will represent you (e.g. abc)  
Make a new 3 letter branch from the master branch  
`git checkout -b abc master`  
Give all individual work (folders or a particular file) the same 3 letter prefix that you gave the branch  
Example folder: `abc-Concentration`  
Example files: `abc-Notes.md`, `abc-README.md`, `abc-Tips.md`, `abc-Screen Shot.png`  
Upload to your branch (`abc`) and merge to `staging` when ready  
- Example updating your branch
```bash
# add stage local changes
git add .
# commit local changes
git commit -m "One line summary of changes made"
# push changes to remote
git push origin abc
```
- Example merging changes to `staging`
```bash
# check out branch to merge to
git checkout staging
# make sure you have the latest changes locally
git pull
# merge your changes to staging locally - if there are any comflicts they must be resolved
git merge abc
# push changes to remote
git push origin staging
# go back to your local branch
git checkout abc
```