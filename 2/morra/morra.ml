type winner = Player | Computer | Tie ;;

let win (hp, gp) = 
  let hc = Random.int(6) in
  let gc = Random.int(11) in
  if ((gp = hp + hc) && (gc != hp + hc)) then ( hc, gc, Player) else
    if(gc = hp + hc) then ((hc, gc, Computer)) else
      (hc, gc, Tie);;

