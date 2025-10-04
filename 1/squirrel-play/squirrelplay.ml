
type season = Spring | Summer | Autumn | Winter
let temp_limit season = if (season = Summer) then 35 else 30;;

let squirrel_play time season = if (time >= 15 && time <= temp_limit season) then true else false;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;

print_endline "Test passati "