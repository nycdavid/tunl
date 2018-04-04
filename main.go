package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"os/exec"
	"strings"
)

func main() {
	env := os.Environ()
	envBts, err := ioutil.ReadFile(".env")
	if err != nil {
		fmt.Println(err)
		panic(err)
	}
	envStr := string(envBts)
	kvPairs := strings.Split(envStr, "\n")
	for _, pair := range kvPairs {
		env = append(env, pair)
	}

	mkCmd := exec.Command("make", "run")
	mkCmd.Env = env
	cmdOut, _ := mkCmd.StdoutPipe()
	cmdErr, _ := mkCmd.StderrPipe()

	startErr := mkCmd.Start()
	if startErr != nil {
		fmt.Println(startErr)
		panic(startErr)
	}

	stdOutput, _ := ioutil.ReadAll(cmdOut)
	errOutput, _ := ioutil.ReadAll(cmdErr)
	fmt.Printf("STDOUT: %s\n", stdOutput)
	fmt.Printf("STDOUT: %s\n", errOutput)

	err = mkCmd.Wait()
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}
