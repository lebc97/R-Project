#Exercises 2-1
#Luis E. Borrero

#Calculate the mean of the following numbers: 1,2,3,4,5,6,7,8
mean(c(1,2,3,4,5,6,7,8)) 
#[1] 4.5

#Assign the group of numbers to the variable x and then calculate the mean of x.
x<-c(1,2,3,4,5,6,7,8)
mean(x)
#[1] 4.5

#Find the median of the following numbers: 1,2,3,4,5,6,7,8,9 ; example with odd numbers
median(c(1,2,3,4,5,6,7,8,9))
#[1] 5

#Find the median of the following numbers: 1,2,3,4,5,6,7,8,9 ; example with even numbers
median(c(1,2,3,4,5,6,7,8,9,10,11,12))
#[1] 6.5

#We pull a 100 random numbers from a uniform distribution between 1 and 10. 
x<-round(runif(100,1,10))
x
#  [1]  9  5  9  6  6  5  5  6  3  7  3  8  6  5  3  8  5  5  8  9  2  4  3  2  6  4  9  7  2  4  5
#[32]  8  7  7  6  5  1  2  7  9  2  7  4  7  9  2  9  1  1  8  8  5  3  2  9  7  6  5  3  1 10  5
#[63]  8  6  6  8  1  5  6  4  5  4  7  4  3  5  6  6  5  6  1  2  5  4  8  1  5  6  9  3  6  1  8
#[94]  3  2  3  3  3  4  5

#Use the table command to add up how many 1s, 2s, 3s... we got using the random number generator.
#Top row shows numbers between 1 and 10 generated, and the bottom row includes how many times that number was generated with runif
#Sort arranges the numbers from lowest to highest frequency. 
y<-sort(table(x))
y
#x
#10  1  2  4  7  9  8  3  6  5 
# 1  8  9  9  9  9 10 12 15 18 

#mode.names allows us to see which elements of x appear appear more frequently and how many times they appear (max(y))
mode.value<-max(y)
mode.value
#[1] 18
mode.names<-names(y[y==max(y)])
mode.names
#[1] "5"

#Example with categorical values 
#First we insert the categorical values we want randomized a 100 times with sample(c)
x<-sample(c("RED","GREEN","CHRISTMAS"),100,replace=TRUE)
x
#[1] "CHRISTMAS" "CHRISTMAS" "RED"       "CHRISTMAS" "RED"       "CHRISTMAS" "GREEN"    
#[8] "GREEN"     "CHRISTMAS" "GREEN"     "CHRISTMAS" "CHRISTMAS" "CHRISTMAS" "RED"      
#[15] "RED"       "GREEN"     "RED"       "RED"       "GREEN"     "GREEN"     "RED"      
#[22] "GREEN"     "CHRISTMAS" "GREEN"     "CHRISTMAS" "RED"       "CHRISTMAS" "RED"      
#[29] "GREEN"     "RED"       "GREEN"     "RED"       "GREEN"     "GREEN"     "CHRISTMAS"
#[36] "RED"       "GREEN"     "GREEN"     "CHRISTMAS" "CHRISTMAS" "CHRISTMAS" "GREEN"    
#[43] "CHRISTMAS" "RED"       "GREEN"     "GREEN"     "RED"       "GREEN"     "GREEN"    
#[50] "GREEN"     "GREEN"     "CHRISTMAS" "RED"       "RED"       "RED"       "GREEN"    
#[57] "RED"       "CHRISTMAS" "CHRISTMAS" "RED"       "CHRISTMAS" "GREEN"     "GREEN"    
#[64] "RED"       "GREEN"     "CHRISTMAS" "GREEN"     "CHRISTMAS" "CHRISTMAS" "CHRISTMAS"
#[71] "CHRISTMAS" "GREEN"     "GREEN"     "CHRISTMAS" "RED"       "CHRISTMAS" "RED"      
#[78] "GREEN"     "GREEN"     "GREEN"     "RED"       "RED"       "GREEN"     "RED"      
#[85] "RED"       "RED"       "GREEN"     "CHRISTMAS" "CHRISTMAS" "GREEN"     "CHRISTMAS"
#[92] "GREEN"     "RED"       "CHRISTMAS" "GREEN"     "CHRISTMAS" "GREEN"     "GREEN"    
#[99] "RED"       "CHRISTMAS"

#Finding the mode with sort(table(x)); the function names allows us to see which names are repeated the most (are the mode)
y<-sort(table(x))
names(y[y==max(y)]) #These are the modes 
#[1] "GREEN"
#There is only one mode, which was preferred by 38 customers:
max(y)
#[1] 38, GREEN appeared 38 times. 

#Similar example, but we have not round our randomly sampled numbers between 1 and 10; hence the mode will be meaningless. 
x<-runif(100,1,10)
y<-sort(table(x))
max(y)
#[1] 1
names(y[y==max(y)])
#[1] "1.26334133464843" "1.28637359337881" "1.73362877615727" "1.76302470359951"
#[5] "1.77953297295608" "1.79771125689149" "1.80881986021996" "1.81282155890949"
# [9] "1.8605175698176"  "1.86287321569398" "1.99149444396608" "2.01191205810755"
# [13] "2.01658785459585" "2.05307154450566" "2.24999261647463" "2.28103341488168"
# [17] "2.28282151580788" "2.34318808093667" "2.47218930278905" "2.51464370940812"
# [21] "2.70550808310509" "2.79326243512332" "2.8190943018999"  "2.86578861880116"
# [25] "2.91871781018563" "2.97102039773017" "3.00955220148899" "3.28664393723011"
# [29] "3.46227369899862" "3.50157151231542" "3.54889417649247" "3.75424270727672"
# [33] "3.76746844104491" "3.86623168108054" "3.87398894806392" "3.8810176118277" 
# [37] "3.91080935997888" "3.98293525748886" "3.98920811875723" "4.06377050559968"
# [41] "4.10604041814804" "4.12194019276649" "4.22772043733858" "4.27984339022078"
# [45] "4.3847683139611"  "4.571456651669"   "4.78447917313315" "4.81594710703939"
# [49] "5.08739180164412" "5.25227248715237" "5.29972832091153" "5.59525268524885"
# [53] "5.89689170452766" "5.92409956757911" "5.97223716648296" "6.157753927866"  
# [57] "6.1833336900454"  "6.19042650051415" "6.46990494965576" "6.55327740614302"
# [61] "6.67514786217362" "6.68373671243899" "6.71904172655195" "6.73406800208613"
# [65] "6.80902601894923" "6.92062588594854" "6.92224241769873" "6.9861037733499" 
# [69] "7.05046805157326" "7.36839961307123" "7.40322129731067" "7.49824142665602"
# [73] "7.5455887503922"  "7.57901728060097" "7.60543767851777" "7.86615587142296"
# [77] "7.92765052546747" "7.93379467003979" "8.01262069842778" "8.02368062804453"
# [81] "8.14607143471949" "8.19639075710438" "8.54785039229318" "8.54957027290948"
# [85] "8.67876154812984" "8.7996015434619"  "8.80232345336117" "8.89388790423982"
# [89] "8.92971983831376" "9.15920837176964" "9.22261742525734" "9.40189966838807"
# [93] "9.42403670214117" "9.44638610607944" "9.52697823708877" "9.59070970048197"
# [97] "9.82924189046025" "9.83724192040972" "9.8720567796845"  "9.89291571360081"

#Now, we are going to calculate the variance of x
var(x)
#[1] 7.029929

#Now, we are going to calculate the standard deviation. There are two methods:
#1. Finding the square root of the variance.
v<-var(x)
sqrt(v)
#[1] 2.651401

#2.Using the Standard Deviation function
sd(x)
#[1] 2.651401
#Both methods as expected yield the same result.




