# SpecTunes

Using test-driven development with RSpec, create the following classes:

### `Track`

* Has a title, list of artists, duration, and price
* Has a "discount" method that reduces the price by a given percentage
* Has a "reset discount" method that restores the price to its original value

### `Album`

* Has a title and a list of songs
* Has a "runtime" (combined duration of all songs)
* Has a price (combined price of all songs)
* Has a list of artists (combined artists of all songs in alphabetical order &ndash; *no duplicates*)
* Can determine whether the album is a single (has exactly one song)
