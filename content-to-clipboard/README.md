# content_to_clipboard

`content_to_clipboard` is a simple Bash script that copies the entire contents of a specified file directly to your system clipboard using `xclip`.

## Usage

``` bash
./content_to_clipboard <filename>
```

If no filename is provided, the script will show a brief help message.

## Requirements

Primarily as a Linux tool, if it is not in the system, install with the following command:
```bash
sudo apt install xclip
```

## Features

-   Checks whether a filename argument is provided.
-   Verifies that the file exists.
-   Copies the file's content to the system clipboard.
-   Provides helpful error messages.

## Example

``` bash
./content_to_clipboard notes.txt
```

Output:
```bash
Contents of 'notes.txt' copied to clipboard
```