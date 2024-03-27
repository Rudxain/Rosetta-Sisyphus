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
main
