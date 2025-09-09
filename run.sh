
git checkout BranchA
git pull
echo Bra-A-Rev-001 >> File-BranchA.Txt
git add .
git commit -m "Bra-A-Rev-001"

echo Bra-A-Rev-002 >> File-BranchA.Txt
git add .
git commit -m "Bra-A-Rev-002"

echo Bra-A-Rev-003 >> File-BranchA.Txt
git add .
git commit -m "Bra-A-Rev-003"


git checkout main
git pull
echo main-Rev-001 >> File-main.Txt
git add .
git commit -m "main-Rev-001"

echo main-Rev-002 >> File-main.Txt
git add .
git commit -m "main-Rev-002"

echo main-Rev-003 >> File-main.Txt
git add .
git commit -m "main-Rev-003"



origin/BranchA)
|\   Merge branch 'BranchA' of github.com:RdyCal81/GhostNotes into BranchA - Callaway, Randy
| * 990c41b - Sat, 6 Sep 2025 14:42:39 -0700 (3 minutes ago)
| |  Bra-A-Rev-003 - Callaway, Randy
| * af4213d - Sat, 6 Sep 2025 14:42:39 -0700 (3 minutes ago)
| |  Bra-A-Rev-002 - Callaway, Randy
| * 4d16655 - Sat, 6 Sep 2025 14:42:39 -0700 (3 minutes ago)
| |  Bra-A-Rev-001 - Callaway, Randy
* | 09779c5 - Sat, 6 Sep 2025 14:42:39 -0700 (3 minutes ago)
| |  Bra-A-Rev-001 - Callaway, Randy
* | 1fb8dfb - Sat, 6 Sep 2025 14:42:41 -0700 (3 minutes ago) (origin/main, origin/HEAD, main)
| |  main-Rev-003 - Callaway, Randy
* | 4242f32 - Sat, 6 Sep 2025 14:42:41 -0700 (3 minutes 

