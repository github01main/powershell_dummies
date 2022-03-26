hub init
hub remote add github01main
hub add -A
$commit_content = Read-Host "Please enter your commit content "
hub commit -m $commit_content
$branch_location = Read-Host "Please enter your branch name "
hub branch -M $branch_location
hub push -u origin $branch_location