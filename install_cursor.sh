#!/bin/bash

installCursor() {
    if ! [ -f /opt/cursor.appimage ]; then
        echo "Installing Cursor AI IDE..."

        # URLs for Cursor AppImage and Icon
        CURSOR_URL="https://downloads.cursor.com/production/5b19bac7a947f54e4caa3eb7e4c5fbf832389853/linux/x64/Cursor-1.1.6-x86_64.AppImage"
        ICON_URL="https://github.com/DanielXavierJob/install-cursor/blob/d2abcdd737281c5409e7c754315a47d2012a5264/cursor.png"

        # Paths for installation
        APPIMAGE_PATH="/opt/cursor.appimage"
        ICON_PATH="/opt/cursor.png"
        DESKTOP_ENTRY_PATH="/usr/share/applications/cursor.desktop"

        # Install curl if not installed
        if ! command -v curl &> /dev/null; then
            echo "curl is not installed. Installing..."
            sudo apt-get update
            sudo apt-get install -y curl
        fi

        # Download Cursor AppImage
        echo "Downloading Cursor AppImage..."
        sudo curl -L $CURSOR_URL -o $APPIMAGE_PATH
        sudo chmod +x $APPIMAGE_PATH

        # Download Cursor icon
        echo "Downloading Cursor icon..."
        sudo curl -L $ICON_URL -o $ICON_PATH

        # Create a .desktop entry for Cursor
        echo "Creating .desktop entry for Cursor..."
        sudo bash -c "cat > $DESKTOP_ENTRY_PATH" <<EOL
[Desktop Entry]
Name=Cursor
Exec=$APPIMAGE_PATH --no-sandbox
Icon=$ICON_PATH
Type=Application
Categories=Development;
EOL

        echo "Cursor AI IDE installation complete. You can find it in your application menu."
    else
        echo "Cursor AI IDE is already installed."
    fi
}

installCursor
