package main

type Game struct {
	Id           int    `json:"id"`
	Name         string `json:"name"`
	YearReleased int    `json:"year_released"`
	IsMobile     bool   `json:"is_mobile"`
}