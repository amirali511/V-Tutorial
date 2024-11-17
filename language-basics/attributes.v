@[inline]
fn fast_function(a int) int {
    return a * a
}

@[deprecated: 'Use new_function() instead']
fn old_function() {}

fn main() {
	println(fast_function(3))
	old_function()
}