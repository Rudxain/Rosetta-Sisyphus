const NAME: "Sisyphus" = "Sisyphus"

// should this be a classic `function`?
const main = () => {
	let chars: string = ""
	// begin eternal torture
	for (;;) {
		// build while printing
		while (chars.length < NAME.length) {
			console.log(chars)
      // `noUncheckedIndexedAccess` doesn't complain?
			chars += NAME[chars.length]
		}
		// destroy all of our work, char by char
		while (chars.length > 0) {
			console.log(chars)
			chars = chars.substring(0, chars.length - 1)
		}
	}
}
main()
