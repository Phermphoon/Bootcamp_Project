## storage
p_order <- c(NULL)
p_price <- c(NULL) 
pp <- c(NULL)
qp <- c(NULL)
dis <- 0.95
## order
print("welcome to combpizz")
 
# dialog 01
print("what's your name?")
u_name <- readLines("stdin", n=1) # n=1 คือ รับข้อมูล 1 บรรทัด
print(paste("Cool",u_name))

# dialog 02
print("alright, are you a members of us? y/n?")
mem <- readLines("stdin", n=1)
if(mem == "y"){
	print("Great!")
  print(" what's your ID.")
  id_mem <- readLines("stdin", n=1) # dialog 03
  print(paste("cool ID",u_name))
	}else{
	print("why not? get 5% discount for member.")
	print("Are you want to register now?  y/n?")
	re_mem<- readLines("stdin", n=1 ) # dialog 04
	if(re_mem == "y"){
		print("Great, could you tell me you phone numbers")
		id_mem <- readLines("stdin", n=1 )
		print(paste("your ID is",id_mem))
		}else{
		dis <- 1
    id_mem <-("no regist")
		print("Ok,no problem")
		}
	}

pz_menu <-data.frame ( 
	id = c(1,2,3,4), 
	type = c("signature","hawaiian","Seafood cocktail","Coke"),
	price = c(300,400,500,20)
) 
print(pz_menu)
print("Which combpizz's menu bring you here sir?")
times1 <- "y"
while(times1 =="y"){
print("it is...(choose ID)")
order <- readLines("stdin", n=1) 
if(order == "1"){
	p_order <- append(p_order,"signature")
	p_price <- append(p_price,300)
	}else {
		if(order == "2"){
		p_order <- append(p_order,"hawaiian")
		p_price <- append(p_price,400)
		}else {
			if(order == "3"){
			p_order <- append(p_order,"Seafood cocktail")
			p_price <- append(p_price,500)
			}else {
				if( order == "4"){
				p_order <- append(p_order,"Cock")
				p_price <- append(p_price,20)
				}else {
          p_order <- append(p_order,"error")
				  p_price <- append(p_price,0)
				  print("sorry we don't have that menu")
          }
				}
			}
		}
print("how many do you want? by integer")
pp <- as.numeric(readLines("stdin", n=1))
print(paste("Ok",pp,"pieces"))
qp <-append(qp,pp)
print("would you want more type? y/n")
times1 <-readLines("stdin", n=1)
}
## sum order
perprice <- (p_price * qp)
total <- sum(perprice)
net <- (total*dis)
realdis <-(total-net)

print("I will review your orders and receipt")
print(paste("User :",u_name,"ID :",id_mem))
print(paste(p_order,qp))
print(paste("Total price :",total,"bath"))
print(paste("Total price :",total,"bath"))
print(paste("discount 5% :",realdis,"bath"))
print(paste("Net price : ", net ,"bath"))
print("thankyou sir.")