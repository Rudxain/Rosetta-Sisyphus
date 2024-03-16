const NAME = 'Sisyphus'

// should this be a classic `function`?
const main = () => {
	let chars = ''
	// begin eternal torture,
	// and abuse type-coercion
	while (Infinity) {
		// build the string while printing it
		while (chars.length < NAME.length) {
			console.log(chars)
			chars += NAME[chars.length]
		}
		// destroy all of our work, char by char
		while (chars.length > 0) {
			console.log(chars)
			// shoult it be `substring` or `substr`?
			chars = chars.slice(0, -1)
		}
	}
}
main()
