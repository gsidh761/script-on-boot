
# This script should backup the ~/.profile file and add the custom script to the bottom of the file. This should support using $1 to get the script

PROFILE="~/.bash_profile"
SCRIPT="$1"
BACKUPDIR="~/.scripts"

mkdir -p "$BACKUPDIR" 
echo "Copying old $PROFILE to $BACKUPDIR"
cp "$PROFILE" "$BACKUPDIR"
echo "Modifiying $PROFILE file to add script..."
if ! grep -q "$SCRIPT" "$PROFILE"; then
            cat >> "sh $SCRIPT" <<EOF

EOF
echo "Done..."
