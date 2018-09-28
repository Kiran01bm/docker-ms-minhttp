package main

import (
  "fmt"
  "net/http"
)

const (
  port = ":24003"
)

func HelloWorld(w http.ResponseWriter, r *http.Request) {
  fmt.Fprintf(w, "HelloWorld from go!!!")
}

func init() {
  fmt.Printf("Started server")
  http.HandleFunc("/hello", HelloWorld)
  http.ListenAndServe(port, nil)
}

func main() {}
