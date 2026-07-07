let dice p = 
  if Random.int 100 < p then 6 else (*genero un numero da 0 a 99, se è minore della probabilita allora va bene il 6*)
    Random.int 5 + 1;;