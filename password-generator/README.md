# Password Generator (Bash)

A simple Bash script that generates a random password of a specified length and validates that the generated password contains:

- At least one uppercase letter (`A-Z`)
- At least one lowercase letter (`a-z`)
- At least one digit (`0-9`)
- At least one special character

## Features

- Random password generation
- Configurable password length
- Password complexity validation
- Uses only standard Bash functionality

## Requirements

- Bash

## Usage

```bash
./password_generator.sh <password_length>
```

### Example

```bash
./password_generator.sh 16
```

Example output:

```text
Password: aB7!xK2@qR9#LmP$
```

## How It Works

1. Accepts a password length as a command-line argument.
2. Randomly selects characters from a predefined character set.
3. Builds a password of the requested length.
4. Validates that the password contains:
   - Uppercase letters
   - Lowercase letters
   - Numbers
   - Special characters
5. Prints the password if valid.
6. Displays an error message if the generated password does not meet the requirements.

## Character Set

The script uses the following characters:

```text
abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#$%^&*()_+
```

## Error Handling

If no password length is provided:

```bash
./password_generator.sh
```

Output:

```text
./password_generator.sh <password_length>
```

If the generated password does not contain all required character categories, the script exits with an error and prompts the user to generate another password.

## Notes

- The script uses Bash's built-in `RANDOM` variable for randomization.
- For cryptographically secure passwords, consider using tools such as `openssl`, `gpg`, or `/dev/urandom`.
