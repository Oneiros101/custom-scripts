#!/usr/bin/env bash

# For debugging
PS4='+${LINENO}: '

PASSWORD_LENGTH="$1"
CHARACTERS="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#$%^&*()_+"

if [[ "$#" -eq 0 ]]; then
	echo "$0 <password_length>"
	exit 1
fi

create_password() {
	local characters_length="${#CHARACTERS}"
	local generated_password=""

	for ((i=0; i<PASSWORD_LENGTH; i++));
	do
		local random_index=$((RANDOM % characters_length))
		generated_password+="${CHARACTERS:random_index:1}"
	done

	echo "${generated_password}"
}

is_valid() {
	local pwd="$1"
	local special_chars="!@#$%^&*()_+"
	local pwd_length="${#pwd}"
	local upper_count=0
	local lower_count=0
	local number_count=0
	local special_count=0

	for ((i=0; i<pwd_length; i++));
	do
		local char="${pwd:i:1}"
		if [[ "${char}" =~ [A-Z] ]]; then ((upper_count++))
		elif [[ "${char}" =~ [a-z] ]]; then ((lower_count++))
		elif [[ "${char}" =~ [0-9] ]]; then ((number_count++))
		else ((special_count++))
		fi
	done

	if [[ "${upper_count}" -gt 0 ]] &&\
		 [[ "${lower_count}" -gt 0 ]] &&\
		 [[ "${number_count}" -gt 0 ]] &&\
		 [[ "${special_count}" -gt 0 ]]; then
		return 0
	else
		return 1
	fi
}

password=$(create_password)

if is_valid "${password}"; then
	echo "Password: ${password}"
else
	printf "\nERROR: Password '%s' is missing either an uppercase, lowercase, digit, or a special character.\n" "${password}"
	printf "Generate another password.\n\n"
	exit 1
fi
