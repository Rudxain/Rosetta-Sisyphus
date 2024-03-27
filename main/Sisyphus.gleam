import gleam/list.{map}
import gleam/string
import gleam/io

fn range(n: Int) {
  case n {
    _ if n < 0 -> list.range(-n, 0)
    _ -> list.range(0, n - 1)
  }
}

/// ♾️
fn loop(cb) {
  cb()
  loop(cb)
}

const name: String = "Sisyphus"
const len: Int = 8

fn do(l) {
  string.slice(name, 0, l)
  |>
  io.println()
  l
}

pub fn main() {
  loop(fn() {
    map(range(len), do)
    map(range(-len), do)
  })
}
