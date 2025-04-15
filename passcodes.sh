MOUNT_POINT="$HOME/passcodes"
ENCRYPTED_FOLDER="$HOME/.important1"

echo "Mounting encrypted password store..."
cryfs "$ENCRYPTED_FOLDER" "$MOUNT_POINT"

if [ $? -eq 0 ]; then
    echo "Mounted successfully! Opening passwords file..."
    nano "$MOUNT_POINT/passcodes.txt"
else
    echo "Failed to mount CryFS. Check if it's installed and try again."
fi
