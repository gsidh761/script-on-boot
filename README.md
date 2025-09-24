# Script on Boot
**Run shell scripts on login without needing root...**

# Usage
1. Download script-on-boot from Github
2. Cd into the script-on-boot directory
3. Run `./boot [script]`

# Todo
- Create installer
- Better `~/.bash_profile` checking
- Restore flag to remove all the changes made to the `~/.bash_profile` file
  
# How it works
This script backups the existing `~/.bash_profile` and adds the `[script]` to the bottom of the file
