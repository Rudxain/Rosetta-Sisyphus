use core::str::from_utf8;
// no need for heap, only stack
const NAME: [u8; 8] = *b"Sisyphus";

fn z<T: Iterator<Item = usize>>(iter: T) {
    for i in iter {
        // I wish there was a compile-time UTF8-validated
        // fixed-size (stack-allocated) `copy`able ("small") string type.
        println!("{}", from_utf8(&NAME[0..i]).unwrap());
    }
}

fn main() {
    // begin eternal torture
    loop {
        // give the illusion of building the string
        z(0..=NAME.len());
        // give the illusion of destroying chars
        z((1..NAME.len()).rev());
    }
}
