interface Animal {
	name string
	make_sound() string
}

struct Cat {
	name string
}

fn (cat Cat) make_sound() string {
	return "Meow"
}

fn main() {
	cat := Cat{
		name: "Schrodinger"
	}
	println("${cat.make_sound()}")
}