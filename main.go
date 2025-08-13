package main

import (
	"example/goreleaser-test/internal/config"
	"fmt"
)

func main() {
	fmt.Println("Hello, World!")
	fmt.Println("Hello, World!")
	fmt.Println("Hello, World!")

	fmt.Println("App Version:", config.AppVersion)
	fmt.Println("App Commit:", config.AppCommit)
}
