fn square[T](thing T) ?T {
	$if T is string {
		println("Cannot square $thing, aborting...")
		return none
	}
	return thing * thing
}

fn main() {
	println(square(2))
	println(square(2.001))
	println(square(true))
}