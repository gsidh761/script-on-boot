
# This script should backup the ~/.profile file and add the custom script to the bottom of the file. This should support using $1 to get the script

PROFILE="$HOME/.bash_profile"
SCRIPT="$1"
BACKUPDIR="$HOME/.scripts"

mkdir -p "$BACKUPDIR" 
echo "Copying old $PROFILE to $BACKUPDIR"
cp "$PROFILE" "$BACKUPDIR"
echo "Trying to Modifiy $PROFILE file to add script..."
if cat "$PROFILE" | cat "$SCRIPT">/dev/null 2>&1; then
        echo "Editing File..."
        echo "chmod +x $SCRIPT && $SCRIPT" >> "$PROFILE" <<EOF
EOF
fi
echo "Done..."
