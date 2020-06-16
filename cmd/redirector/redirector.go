package main

import (
	"log"
	"net/http"
	"os"
	"strconv"
)

// redirect returns a 301 permanent redirect on https
func redirect(w http.ResponseWriter, r *http.Request) {
	l := "https://" + r.Host + r.RequestURI

	log.Println(r.RemoteAddr, l)

	w.Header().Add("Location", l)
	w.WriteHeader(http.StatusMovedPermanently)
}

func main() {
	listenPort := ":8080"
	lp := os.Getenv("LISTEN_PORT")
	if _, err := strconv.Atoi(lp); err == nil {
		listenPort = ":" + lp
	}
	http.HandleFunc("/", redirect)
	log.Fatal(http.ListenAndServe(listenPort, nil))
}
