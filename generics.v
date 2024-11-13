struct Stack<T> {
mut:
	items []T
}

fn (mut stack Stack<T>) push(value int) {
	stack.items << value
}

fn (mut stack Stack<T>) pop() ?T {
	if stack.items.len == 0 {
		return none
	}
	item := stack.items.last()
	stack.items.delete(stack.items.len - 1)
	return item
}

fn main() {
	mut stack := Stack<int> {
		items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
	}
	println(stack)
	println(stack.pop())
	stack.push(16)
	println(stack.items.last())
}