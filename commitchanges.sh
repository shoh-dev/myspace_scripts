
# write a reusable function to commit changes using now variable
commit_changes() {
    # get current date and time (example: 2018-01-01 01:01:01)
    now=$(date +"%Y-%m-%d %H:%M:%S")

    echo "Committing changes on $now"
  
    # commit changes 
    git add .
    git commit -m "Changes committed on $now"
    git push
}

# go all packages one by one and commit changes
cd packages

echo "Moving to myspace_redux"
cd myspace_redux
commit_changes

echo "Moving to myspace_design_system"
cd ../myspace_design_system
commit_changes




