package main

import (
	// "fmt"
	// "io"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
)

func indexHandler(w http.ResponseWriter, req *http.Request) {
	defer req.Body.Close()

	data := map[string]string{
		"server": "golang",
	}

	json.NewEncoder(w).Encode(data)

	// w.Header().Set("Content-Type", "application/json")
	// w.Write([]byte("This is an example server.\n"))
	// fmt.Fprintf(w, "This is an example server.\n")
	// io.WriteString(w, "This is an example server.\n")
}

func main() {
	http.HandleFunc("/", indexHandler)
	fmt.Println("Server listening on port 5000")

	err := http.ListenAndServe(":3002", nil)

	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}
