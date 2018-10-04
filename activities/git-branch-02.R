# Create new git repository (RStudio File -> New Project -> check Create a git repository)

echo "test" > README

git commit README

# Start work on feature 1
git branch feature1             # Create branch from here
git checkout feature1           # Switch to different branch

    # <internals>
    cat .git/HEAD
    cat .git/refs/heads/feature1
    # <internals>

git status
echo "feature 1" > feature1.md
git add .
git commit -m "Add feature 1"

    # <internals>
    cat .git/HEAD
    cat .git/refs/heads/feature1
    # <internals>

# Start work on feature 2
echo "feature 2" > feature2.md
git add .
git status

# Oops, forgot to switch to new branch
git checkout master
git checkout -b feature2
git commit -m "Add feature 2"

# view branches
gitk --branches

# Start work on feature 3
git checkout -b feature3 master
echo "feature 3" > feature3.md
# Get distracted by feature 4
echo "feature 4" > feature4.md

# Oops, forgot to commit feature 3!
git add .
git status

# Don't want to commit everything...
git reset feature4.md           # reset path is opposite of add
git status
git commit -m "Add feature 3"

git checkout -b feature4 master
git add .
git commit -m "Add feature 4"

# view branches
gitk --branches

# Adapted from https://github.com/dahlbyk/git-hands-on#6-working-locally-with-branches