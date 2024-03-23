use core::str::from_utf8;
// no need for heap, only stack
const NAME: [u8; 8] = *b"Sisyphus";

fn main() {
	// begin eternal torture
	loop {
		// give the illusion of building the string
		for i in 0..=NAME.len() {
			// I wish there was a compile-time UTF8-validated
			// fixed-size (stack-allocated) `copy`able ("small") string type.
			println!("{}", from_utf8(&NAME[0..i]).unwrap());
		}
		// give the illusion of destroying chars
		for i in (1..NAME.len()).rev() {
			println!("{}", from_utf8(&NAME[0..i]).unwrap());
		}
	}
}
