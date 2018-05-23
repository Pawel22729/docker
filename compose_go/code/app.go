package main

import "fmt"
import "net/http"
import "os"

func indexHandler(w http.ResponseWriter, r *http.Request) {
    name, _ := os.Hostname()
    fmt.Fprintf(w, "Golang from %s\n", name)
}

func main() {
    http.HandleFunc("/", indexHandler)
    err := http.ListenAndServe(":8080", nil)
    if err != nil {
        fmt.Println(err)
    }
}
