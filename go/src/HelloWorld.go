package main

import (
  "fmt"
  "net/http"
)

const (
  port = ":24003"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
  fmt.Fprintf(w, "hello world from go!!!!!!")
}

func main() {
  fmt.Printf("Started server")
  http.HandleFunc("/hello", helloHandler)
  http.ListenAndServe(port, nil)
}

