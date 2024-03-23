// no need for heap, only stack
const NAME: &str = "Sisyphus";

fn main() {
	// begin eternal torture
	loop {
		// give the illusion of building the string
		for i in 0..=NAME.len() {
			println!("{}", &NAME[0..i]);
		}
		// give the illusion of destroying chars
		for i in (1..NAME.len()).rev() {
			println!("{}", &NAME[0..i]);
		}
	}
}
