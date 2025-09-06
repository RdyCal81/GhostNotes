# Start
### 9/5/25
#### This seemed to work
```
git rebase --interactive HEAD~2
git push --force origin main
```
##### 006-A
```
randy:~/sandbox/GhostNotes> git lg2
* 212ad80 - Fri, 5 Sep 2025 20:14:50 -0700 (88 seconds ago) (HEAD -> main, origin/main, origin/HEAD)
|  005-A - Callaway, Randy
* a758694 - Fri, 5 Sep 2025 19:42:25 -0700 (34 minutes ago)
|  003-A - Callaway, Randy
* 2763037 - Fri, 5 Sep 2025 19:37:33 -0700 (39 minutes ago)
|  002-A - Callaway, Randy
* c2c8bd7 - Fri, 5 Sep 2025 19:34:55 -0700 (41 minutes ago)
|  001-A - Callaway, Randy
* 83eddf2 - Fri, 5 Sep 2025 19:06:00 -0700 (70 minutes ago)
   Initial commit - Randy Callaway
randy:~/sandbox/GhostNotes> 
```


```
git rebase --onto TopicA~3 TopicA~2 TopicA


git rebase --onto TargetA~2 TargetA~1 TargetA
```

**[Git merge delete thing](https://stackoverflow.com/questions/14043961/git-squash-history-after-merge)**

**[Git merge error](https://stackoverflow.com/questions/16862933/how-to-resolve-gits-not-something-we-can-merge-error)**


Rev-001
Rev-002
Rev-003
Rev-004

This main -001
This main -002
This main -003

