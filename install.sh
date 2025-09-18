
# This script should backup the ~/.profile file and add the custom script to the bottom of the file. This should support using $1 to get the script

PROFILE="~/.profile"
SCRIPT="$1"
BACKUPDIR="~/.script-on-boot/"

mkdir "$BACKUPDIR" 
echo "Copying old ~/.profile to $BACKUPDIR"
cp "$PROFILE" "$BACKUPDIR"
echo "Modifiying ~/.profile file to add script..."
echo "Done..."
