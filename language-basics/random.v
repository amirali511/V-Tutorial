import rand
import readline

fn main() {
	mut reader := readline.Readline{}
	max := reader.read_line("Enter a value for max random number: ")!.int()
	rand.seed([u32(12315245), 975345345])
	mut value := rand.f32_in_range(1, max)!
	println(value)
	value = rand.u32_in_range(1, u32(max))!
	println(value)
}