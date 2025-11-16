# finish

A Bash utility to mark files or directories as **completed** by renaming
them with a `_COMPLETED` suffix.

------------------------------------------------------------------------

## Usage

``` bash
finish [OPTIONS]
```

Rename a specified path of a file or directory by appending`_COMPLETED`.

### Options

| Option            | Description                                   |
| ----------------- | --------------------------------------------- |
| `--here`          | Finish (rename) the current working directory |
| `-p, --path PATH` | Specify a file or directory's path            |
| `-h, --help`      | Show the help message and exit                |


## Examples

``` bash
# Rename current working directory
finish --here

# Rename a specific file or directory
finish -p /path/to/directory-or-file
```

------------------------------------------------------------------------

## Behavior

-   Appends `_COMPLETED` to the provided path.
-   Displays an error message if the path does not exist or if renaming
    fails.
-   Ensures mutually exclusive use of `--here` and `--path`.

------------------------------------------------------------------------

## Example Output

``` bash
$ finish -p /home/user/myproject
Successfully renamed '/home/user/myproject' to '/home/user/myproject_COMPLETED'
```
