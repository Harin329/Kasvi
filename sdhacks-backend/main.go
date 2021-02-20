package main

import (
    "log"
	"net/http"

	"github.com/gorilla/mux"
    "sdhacks-backend/src/database"
    "sdhacks-backend/src/handlers/harin"
    "sdhacks-backend/src/handlers/garden"
    "sdhacks-backend/src/handlers/plot"
)

func home(w http.ResponseWriter, r *http.Request) {
    w.Header().Set("Content-Type", "application/json")
    switch r.Method {
    case "GET":
        w.WriteHeader(http.StatusOK)
        w.Write([]byte(`{"message": "Hello SDHacks"}`))
    case "POST":
        w.WriteHeader(http.StatusCreated)
        w.Write([]byte(`{"message": "post SDHacks"}`))
    case "PUT":
        w.WriteHeader(http.StatusAccepted)
        w.Write([]byte(`{"message": "put SDHacks"}`))
    case "DELETE":
        w.WriteHeader(http.StatusOK)
        w.Write([]byte(`{"message": "delete SDHacks"}`))
    default:
        w.WriteHeader(http.StatusNotFound)
        w.Write([]byte(`{"message": "not SDHacks"}`))
    }
}

func main() {
    database.Start()
	r := mux.NewRouter()

	r.HandleFunc("/", home)

    // Harin
    api := r.PathPrefix("/harin").Subrouter()
    api.HandleFunc("", harin.Get).Methods(http.MethodGet)
    api.HandleFunc("", harin.Post).Methods(http.MethodPost)
    api.HandleFunc("", harin.Put).Methods(http.MethodPut)
    api.HandleFunc("", harin.Delete).Methods(http.MethodDelete)
    api.HandleFunc("/user/{userID}/comment/{commentID}", harin.Params).Methods(http.MethodGet)

    // Garden
    gardenapi := r.PathPrefix("/garden").Subrouter()
    gardenapi.HandleFunc("", garden.Get).Methods(http.MethodGet)

    // Plot
    plotapi := r.PathPrefix("/plot").Subrouter()
    plotapi.HandleFunc("/{gardenID}", plot.Params).Methods(http.MethodGet)

    log.Fatal(http.ListenAndServe(":3000", r))
}