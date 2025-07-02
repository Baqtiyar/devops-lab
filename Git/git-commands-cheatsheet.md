# Git Commands Cheatsheet

I have created this handy reference for commonly used Git commands in organisations, each with a simple use case. It’s ideal for beginners and anyone looking to understand version control basics in real-world projects. Of course, Git is not limited to these commands, but this collection serves as a solid starting point. Enjoy! 

---

## 1. `git init`

**Use Case:**  
Initializes a new Git repository in your current directory. Use this when starting version control for a new or existing project.

```bash
git init
```

---

## 2. `git status`

**Use Case:**  
Shows the current state of the working directory and staging area. Useful to check which files are modified, staged, or untracked.

```bash
git status
```

---

## 3. `git add .`

**Use Case:**  
Stages all the changes (new, modified, deleted files) in the current directory for the next commit.

```bash
git add .
```

---

## 4. `git commit -m "message"`

**Use Case:**  
Records the staged changes to the repository with a custom commit message.

```bash
git commit -m "Initial commit"
```

---

## 5. `git log`

**Use Case:**  
Displays a detailed history of commits in the current branch. Helps in tracking project history.

```bash
git log
```

---

## 6. `git log --oneline`

**Use Case:**  
Shows a summarized, one-line-per-commit log. Useful for a quick overview of commit history.

```bash
git log --oneline
```

---

## 7. `git show`

**Use Case:**  
Displays detailed information about a specific commit (default is the latest). Includes diff, author, and date.

```bash
git show
```

---

## 8. `git remote add origin <repo-url>`

**Use Case:**  
Links your local repository to a remote one hosted on GitHub, GitLab, etc.

```bash
git remote add origin https://github.com/user/repo.git
```

---

## 9. `git push -u origin master`

**Use Case:**  
Pushes the local `master` branch to the remote `origin` and sets it as the upstream branch.

```bash
git push -u origin master
```

---

## 10. `git pull -u origin master`

**Use Case:**  
Fetches and merges changes from the remote `origin` to the local `master` branch.

```bash
git pull -u origin master
```

---

## 11. `git branch`

**Use Case:**  
Lists all local branches in the current repository.

```bash
git branch
```

---

## 12. `git branch <branch-name>`

**Use Case:**  
Creates a new branch with the specified name.

```bash
git branch feature-branch
```

---

## 13. `git checkout <branch-name>`

**Use Case:**  
Switches to the specified branch in your local repository.

```bash
git checkout feature-branch
```

---

## 14. `git branch -d <branch-name>`

**Use Case:**  
Deletes the specified branch locally.

```bash
git branch -d feature-branch
```

---

## 15. `git merge`

**Use Case:**  
Merges changes from another branch into the current branch.

```bash
git merge feature-branch
```

---

## 16. `git log` (Repeated)

**Use Case:**  
Shows commit logs. (Already listed above.)

```bash
git log
```

---

## 17. `git stash`

**Use Case:**  
Temporarily saves uncommitted changes without committing them, allowing a clean working directory.

```bash
git stash
```

---

## 18. `git stash list`

**Use Case:**  
Shows the list of stashed changes.

```bash
git stash list
```

---

## 19. `git stash clear`

**Use Case:**  
Deletes all stashed changes.

```bash
git stash clear
```

---

## 20. `git reset <filename>`

**Use Case:**  
Unstages the specified file from the staging area.

```bash
git reset app.py
```

---

## 21. `git reset .`

**Use Case:**  
Unstages all files from the staging area.

```bash
git reset .
```

---

## 22. `git reset --hard`

**Use Case:**  
Resets the working directory and index to the last commit, discarding all changes.

```bash
git reset --hard
```

---

## 23. `git clean -n`

**Use Case:**  
Shows which untracked files would be removed without actually deleting them.

```bash
git clean -n
```

---

## 24. `git clean -f`

**Use Case:**  
Deletes untracked files from the working directory.

```bash
git clean -f
```

---

## 25. `git tag -a <tagname> -m "<message>" <commit-id>`

**Use Case:**  
Creates an annotated tag on the specified commit with a message.

```bash
git tag -a v1.0 -m "Release version 1.0" 1a2b3c4d
```

---

## 26. `git tag`

**Use Case:**  
Lists all the tags in the repository.

```bash
git tag
```

---

## 27. `git tag -d <tag-name>`

**Use Case:**  
Deletes the specified tag.

```bash
git tag -d v1.0
```

---

## 28. `git clone <repository-url>`

**Use Case:**  
Creates a copy of a remote repository on your local machine.

```bash
git clone https://github.com/user/repo.git
```

---
