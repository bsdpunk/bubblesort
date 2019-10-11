package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"strings"
)

func scanner() []int {
	var intArray []int

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		r := strings.Split(scanner.Text(), " ")
		for n := range r {
			num, _ := strconv.Atoi(r[n])
			intArray = append(intArray, num)
		}
		//fmt.Println(intArray)
	}
	return intArray
}

//var toBeSorted [10]int = [10]int{1, 3, 2, 4, 8, 6, 7, 2, 3, 0}
func quicksort(a []int) []int {
	if len(a) < 2 {
		return a
	}

	left, right := 0, len(a)-1

	pivot := rand.Int() % len(a)
	//	fmt.Println(reflect.TypeOf(pivot))
	a[pivot], a[right] = a[right], a[pivot]

	for i, _ := range a {
		if a[i] < a[right] {
			a[left], a[i] = a[i], a[left]
			left++
		}
	}

	a[left], a[right] = a[right], a[left]

	quicksort(a[:left])
	quicksort(a[left+1:])

	return a
}

func main() {
	toBeSorted := scanner()
	fmt.Println(quicksort(toBeSorted))
	quicksort(toBeSorted)
}
