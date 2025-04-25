package main

import (
	"log"
	"net/http"

	"github.com/gorilla/mux"
)
func main() {

    r := mux.NewRouter().StrictSlash(true)
    r.HandleFunc("/allgames", AllGames) // ----> To request all games
    r.HandleFunc("/games/{name}", SingleGame) // ----> To request a specific game by name
    log.Fatal(http.ListenAndServe(":10000", r))
}