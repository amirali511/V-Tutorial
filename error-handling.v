fn divide(a int, b int) !f32 {
    if b == 0 {
        return error('Cannot divide by zero')
    }
    return f32(a) / f32(b)
}

fn main() {
    mut result := divide(10, 2) or {
        println('Error: $err')
        return
    }
    println(result)

		result = divide(1, 0) or {
				println('Error: $err')
				return
		}
}
