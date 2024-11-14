fn main() {
	mut arr := [1, 2, 3, 4, 5, 6]
	for element in arr {
		println(element)
	}
	// Causes warnings to happen
	slice := arr[2..5]
	// unsafe without copy
	second_slice := unsafe {
		arr[..5]
	}
	// Copy of the slice
	third_slice := arr[2..].clone()
	println("Arr is $arr and the slices are $slice, $second_slice, and $third_slice")
	println("First one is ${arr.first()} and the last one is ${arr.last()}")
	arr.delete(2)
	println("Arr is $arr and the slices are $slice, $second_slice, and $third_slice")
	arr << 10000
	println("Arr is $arr and the slices are $slice, $second_slice, and $third_slice")
	println("${arr.filter(it % 2 == 0)}")
	println("${arr.map(it * 2)}")
	println("${arr.contains(10000)}")
}