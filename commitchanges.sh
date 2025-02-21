
# write a reusable function to commit changes using now variable
commit_changes() {
    # get current date and time (example: 2018-01-01 01:01:01)
    now=$(date +"%Y-%m-%d %H:%M:%S")

    echo "\n>>>>>>>>> Committing changes on $now\n"
  
    # commit changes 
    git add .
    git commit -m "Changes committed on $now"
    git push
}

echo "\n>>>>>>>>> Commiting myspace scripts"
commit_changes

# go all packages one by one and commit changes
cd packages

echo "\n>>>>>>>>> Moving to myspace_core"
cd ../myspace_core
commit_changes

echo "\n>>>>>>>>> Moving to myspace_data"
cd ../myspace_data
commit_changes

echo "\n>>>>>>>>> Moving to myspace_design_system"
cd ../myspace_design_system
commit_changes