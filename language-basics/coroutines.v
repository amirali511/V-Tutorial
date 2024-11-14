fn function(ch chan int, value int) int {
	ch <- value
	return value
}

fn main() {
	ch := chan int{}
	go function(ch, 504)
	val := <-ch
	println(val)
}