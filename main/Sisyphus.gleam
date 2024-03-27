import gleam/io
import gleam/string
import gleam/list.{range, map}
import gleam/option.{type Option, None, Some}

const name: String = "Sisyphus"
const len: Int = 8

/// Infallibly loop `n` times.
/// if `None`, then ♾️.
fn loop(cb: fn(Int) -> Int, n: Option(Int)) -> Int {
  case n {
    _ if n <= 0 -> n
    _ -> {
      cb(n)
      loop(cb, n - 1)
    }
  }
}

fn do(l) {
  string.slice(name, 0, l)
  |>
  io.println()
  l
}

pub fn main() {
  loop(fn(_) {
    map(range(0, len), do)
    loop(do, len - 1)
    0
  }, 0x1000000000000000000000)
}
