fn err_code(val int) (int, bool) {
	// You can also put paranthesis for the if condition, but you'd get a warning
	if val == 200 {
		return 200, true
	} else {
		return val, false
	}
}

fn main() {
	println("This is ${err_code(200)}")
	println("This is ${err_code(404)}")
}
