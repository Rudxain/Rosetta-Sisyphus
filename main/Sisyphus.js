const NAME = "Sisyphus"
// SQL?
var chars = ""
// begin eternal torture,
// and abuse type-coercion
while (Infinity) {
	while (chars.length < NAME.length)
		// build the string while printing it
		console.log(chars),
		chars += NAME[chars.length] // "unsafe" indexing
	// destroy all of our work, char by char
	while (chars.length)
		console.log(chars),
		/*
		`substr` is deprecated.
		`substring` is specific to strings.
  		`slice` is polymorphic (it also works on `Array`s),
		so we can use its "duck-typing".
  		`slice` is short, both in name and args,
		which is desirable for minification.
		*/
		chars = chars.slice(0, -1)
}
