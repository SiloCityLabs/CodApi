package main

import (
	"encoding/json"
	"fmt"
	"net/http"

	"github.com/gorilla/mux"
)

var games = []Game{
    {Id: 1, Name: "Cod 1", YearReleased: 2000, IsMobile: false},
    {Id: 2, Name: "Cod 2", YearReleased: 2001, IsMobile: false},
}

func AllGames(w http.ResponseWriter, r *http.Request) {

    fmt.Println("Endpoint hit: returnAllGames")
    json.NewEncoder(w).Encode(games)
}

func SingleGame(w http.ResponseWriter, r *http.Request) {
    vars := mux.Vars(r)

    name := vars["name"]

    for _, grocery := range games {
        if grocery.Name == name {
            json.NewEncoder(w).Encode(grocery)
        }
    }
}