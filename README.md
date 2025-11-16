# custom-scripts

This directory contains a collection of small custom-scripts for your everyday troubleshooting.
The scripts themselves are to be stored in /usr/local/bin directory.

## Structure

    custom-scripts/
    └── finish/
        └── finish.sh

## finish/finish.sh

The `finish.sh` script renames a specified file or directory by
appending `_COMPLETED` to its name.
It supports two modes:

-   **--here**: Marks the current working directory as completed
-   **--path PATH**: Marks a specific file or directory as completed

