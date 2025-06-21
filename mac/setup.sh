#!/bin/bash

echo "Select the environment you want to set up:"
options=("JavaScript" "Java" "Rust" "ui" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "JavaScript")
            echo "Setting up JavaScript environment..."
            brew install node pnpm yarn
            break
            ;;
        "Java")
            echo "Setting up Java environment..."
            # Add Java setup commands here
            # e.g., brew install openjdk
            break
            ;;
        "Rust")
            echo "Setting up Rust environment..."
            # Add Rust setup commands here
            # e.g., curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
            break
            ;;
        "ui")
            echo "Setting up ui tools..."
            brew install --cask sf-symbols
            brew install sketchybar
            brew install aerospace
            
            echo "Copying config files to $HOME/.config/"
            cp -R ../aerospace "$HOME/.config/"
            cp -R ../nvim "$HOME/.config/"
            cp -R ../sketchybar "$HOME/.config/"
            cp -R ../wezterm "$HOME/.config/"
            echo "Done."
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done 