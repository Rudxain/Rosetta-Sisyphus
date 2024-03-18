const NAME: "Sisyphus" = "Sisyphus"

// `function` is appropriate for subroutines,
// but arrow/lambda is concise.
const main: () => never = () => {
	let chars: string = ""
	// begin eternal torture
	for (;;) {
		// avoid dealing with `noUncheckedIndexedAccess`
		for (const c of NAME) {
			// build while printing
			console.log(chars)
			chars += c
		}
		// destroy all of our work, char by char
		while (chars.length > 0) {
			console.log(chars)
			// `substring` is specific to `string`s,
			// so we must use it for "safety",
			// despite its verbosity.
			chars = chars.substring(0, chars.length - 1)
		}
	}
}
main()
