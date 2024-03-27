#!/usr/bin/env bash
set -euf

readonly NAME='Sisyphus'

# should we use a different syntax?
main() {
	local l=0
	while true
	do
		while [[ l -lt ${#NAME} ]]
		do
			echo "${NAME:0:l}"
			((l++)) || true
		done
		while [[ l -gt 0 ]]
		do
			echo "${NAME:0:l}"
			((l--)) || true
		done
	done
}
# https://stackoverflow.com/a/28776166
(return 0 2>/dev/null) || main
