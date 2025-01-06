#!/bin/bash

# Define file paths
FORMULAS_FILE="formulae.txt"
CASKS_FILE="apps.txt"

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Homebrew installed successfully."
else
    echo "Homebrew is already installed."
fi

# Function to install formulas
install_formulas() {
    if [ -f "$FORMULAS_FILE" ]; then
        echo "Installing formulas from $FORMULAS_FILE..."
        while IFS= read -r formula; do
            if [[ ! -z "$formula" && "$formula" != \#* ]]; then
                echo "Installing $formula..."
                brew install "$formula" || echo "Failed to install $formula"
            fi
        done < "$FORMULAS_FILE"
    else
        echo "$FORMULAS_FILE not found. Skipping formula installation."
    fi
}

# Function to install casks
install_casks() {
    if [ -f "$CASKS_FILE" ]; then
        echo "Installing casks from $CASKS_FILE..."
        while IFS= read -r cask; do
            if [[ ! -z "$cask" && "$cask" != \#* ]]; then
                echo "Installing $cask..."
                brew install --cask "$cask" || echo "Failed to install $cask"
            fi
        done < "$CASKS_FILE"
    else
        echo "$CASKS_FILE not found. Skipping cask installation."
    fi
}

# Install formulas and casks
install_formulas
install_casks

# Clean up
echo "Cleaning up..."
brew cleanup

echo "Installation process completed."
