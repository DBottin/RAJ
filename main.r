goal <- floor(runif(1, min=0, max=101))

gameFunc <- function(){
  guess <- readline(prompt="Errate die Ziffer: ")
  if (guess==goal) {
  print("Richtig! Du hast es geschafft!")
} else {
  if (guess<goal){
    print("Falsch! Die Zahl ist groesser!")
  } else {
    print("Falsch! Die Zahl ist kleiner!")
  }
    gameFunc()
}
}
gameFunc()