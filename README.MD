Certainly! To craft a README.md file for your script that includes both an introduction to the script and how to use it,
follow the structure below. This README.md template will explain the purpose of the script, provide a warning about its
functionality, and offer detailed setup and usage instructions.

---

# Delete Screenshots Script

This bash script is designed to quickly find and delete files on a macOS system that start with the name "Screenshot".
It primarily targets the "Desktop" and "Downloads" directories, which are common locations where screenshots are saved.
Use this script to clean up your workspace by removing unnecessary screenshot files.

## Warning

**Please use this script with caution.** It will permanently delete files matching the criteria (file names starting
with "Screenshot") in the specified directories. Before running the script, ensure you have backups of any important
files. It is highly recommended to first run the script in a mode that lists the files to be deleted, rather than
deleting them immediately, to verify its behavior.

## Prerequisites

- A macOS computer
- Basic knowledge of terminal and command line operations
- Necessary permissions to delete files in the targeted directories

## Installation

1. Open the Terminal app on your Mac.

2. Navigate to the directory where you want to save the script, then run:

```sh
nano delete_screenshots.sh
```

3. Copy and paste the script provided below into the nano editor:

```bash
#!/bin/bash

# Paths to search for screenshots. Edit these paths as needed.
directories=("$HOME/Desktop" "$HOME/Downloads")

# Loop through each directory
for dir in "${directories[@]}"; do
    echo "Searching in: $dir"
    # Find and delete files starting with "Screenshot"
    find "$dir" -type f -name "Screenshot*" -exec echo Deleting: {} \; -exec rm {} \;
done

echo "Done."
```

4. Save the file and exit nano. If using nano, you can do this by pressing `Ctrl` + `X`, then pressing `Y` to confirm
   saving, and finally `Enter` to confirm the file name.

5. Make the script executable by running:

```sh
chmod +x delete_screenshots.sh
```

## Usage

To run the script, ensure you are in the directory where the script is saved and then execute:

```sh
./delete_screenshots.sh
```

**Note:** By default, the script searches the Desktop and Downloads directories. You can edit the script to add or
change the directories as needed.

## Safety Check

To preview the files that will be deleted without actually deleting them, you can modify the script temporarily.
Replace `-exec rm {} \;` with `-exec echo Will delete: {} \;`. This will print the names of the files that would be
deleted, without removing them.

## License

This script is provided "as is", without warranty of any kind. Use it at your own risk.

---