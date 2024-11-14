import readline

fn main() {
	mut reader := readline.Readline{}
	input := reader.read_line("What's your OS? ")!
	if input == "Linux" {
		println("Great!!")
	} else {
		println(input)
	}
	input2 := reader.read_char()!
	println("${input2}")
}