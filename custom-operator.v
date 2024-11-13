struct Vector {
	x int
	y int
}

fn (a Vector) * (b Vector) int {
	return a.x * b.x + a.y * b.y
}

fn main() {
	v1 := Vector{1, 2}
	v2 := Vector{2, -1}
	sum := v1 * v2
	println(sum)	
}
