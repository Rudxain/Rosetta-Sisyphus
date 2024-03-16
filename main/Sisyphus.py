#!/usr/bin/env python3
from typing import Final

NAME: Final = 'Sisyphus'
def main():
	chars = ''
	# begin eternal torture
	while True:
		# build the string while printing it
		while len(chars) < len(NAME):
			print(chars)
			chars += (NAME[len(chars)])
		# destroy all of our work, char by char
		while len(chars) > 0:
			print(chars)
			chars = chars[0:-1]

if __name__ == '__main__':
	main()
