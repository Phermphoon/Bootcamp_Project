again <- "y"
uw <- 0
bw <- 0
dr <- 0
ro <- 0
err <- 0

## Description
des <- data.frame (
  keys = c(1,2,3),
  meaning = c("rock", "paper", "scissor")
  )
## greeting
print("Hello! welome to paoyingchup game by combBOT")
print("What's your name?")
u_name <- readLines("stdin", n=1)
print(paste("What's up bro",u_name))
print("Are you ready ? y or n")
play <- readLines("stdin", n=1)
if(play == "y"){
    print(des)
    print("May the force be with you")
}else{
  print("It's ok baby.bye~")
  break
}
## game start
  while (again == "y"){
  print("go!")
  u <- readLines("stdin", n=1)
  bot <- sample(c(1,2,3), size =1)
  if (u == bot){
    print(paste("user:",u, "bot:",bot))
    print("Draw")
    dr <- dr +1
  } else { 
      if(u == 1 & bot == 2 | u == 2 & bot == 3 | u == 3 & bot == 1){
      print(paste("user:",u, "bot:",bot))
      print("you lose") 
      bw <- bw +1
      } else {
        if(u == 1 & bot == 3 | u == 2 & bot == 1 | u == 3 & bot == 2){
        print(paste("user:",u, "bot:",bot))
        print("you win") 
        uw <- uw +1
        } else{
          print("pls. follow the rules.")
          err<-err+1
          }
        }
    }
  print("Do you want to play again? y or n")
  again <- readLines("stdin", n=1)
  if(again == "y"){
    print( "come on." )
  } else{
    print("ok")
    }
  ro <- ro+1
  }
  ## done
    print("Overall score")
    print(paste("rounds :",ro))
    print(paste("Win :", uw))
    print(paste("Lose :", bw))
    print(paste("Draw :",dr))
    print(paste("Errors brain :",err))
    print("Good luck baby.")
  
