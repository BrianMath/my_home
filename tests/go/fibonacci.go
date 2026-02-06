package main

import "fmt"

func Fib(n int, z chan<- int) {
	if (n <= 1) { z <- n; return}

	c1l := make(chan int)
	// c2l := make(chan int)

	go Fib(n-1, c1l); go Fib(n-2, c1l)

	x := <-c1l
	y := <-c1l
	z <- (x + y)
}

func main() {
	c0l := make(chan int)
	go Fib(15, c0l)
	u := <-c0l
	fmt.Println(u)
}
