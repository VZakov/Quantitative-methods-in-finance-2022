#####Boolean vales and logical operators#####
TRUE & FALSE == FALSE

TRUE & TRUE == TRUE

TRUE | TRUE == TRUE 

TRUE | FALSE == TRUE
#####Boolean vales and logical operators#####

#####If else statement#####
if(10 > 5){
  print("The statement is true")
} else {
  print("The statement is false")
}

if(10 < 5){
  print("The statement is true")
} else {
  print("The statement is false")
}
#####If else statement#####

#####Vectors#####
#Create character vector
FirstVector <- c("Kaloyan", "Vladimir", "Maria", "Sibel")
class(FirstVector)

#Create numerical vector
SecondVector <- c(1 ,5, 2, 12, -5, -15, 22, -5)
class(SecondVector)

#Select one element from the vector using indexes
SecondVector[4]

#Select two element from the vector using indexes
SecondVector[c(4, 7)]

#Why would SecondVector[4, 7] not work?

#Select elements from the vector using a boolean vector. Selects 4th and 7th element
SecondVector[c(FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE)]

#Add the same number to the whole vector:
ThirdVector <- SecondVector + 3

#Add a number only to one element of the vector:
ThirdVector <- SecondVector + c(0, 0, 3, 0, 0, 0, 0, 0)

#If the vector we are adding is of shorter length, R tries to "multiply"
#the shorter vector to match the length of the bigger vector.
#That's why SecondVector + 3 actually does SecondVector + c(3, 3, 3, 3, 3, 3, 3, 3)
#What would happen if you perform the following? Look at the warning message.
ThirdVector <- SecondVector + c(0, 3)
ThirdVector <- SecondVector + c(0, 3, 3)

#Conditions of vectors
#Select all elements which are bigger than 3:
FourthVector <- SecondVector[SecondVector > 3]
#Look to what SecondVector > 3 resolves to - a boolean vector,
#which indicates for element if the condition is TRUE/FALSE

#Different conditions for different elements
FourthVector <- SecondVector[SecondVector > c(3, 5, 3, 5, 3, 5, 3, 5)]

#Selecting the last three elements of the vector
#function length  - Get or set the length of vectors (including lists) 
#and factors, and of any other R object for which a method has been defined.
length(SecondVector)
FifthVector <- SecondVector[SecondVector[(length(SecondVector)-2):length(SecondVector)]]
#What would happen if there were no brackets in (length(SecondVector)-2)?
#Adding elements to a vector
NewVector <- c(SecondVector, 4)
NewVector <- c(NewVector, 5, 6)
#####Vectors#####

#####For Loop#####
#The for loop is used to repeat a section of code known number of times.
for(i in 1:5){
print(i)
}
#Here the number of times is each number in the sequence 1:5(1, 2, 3, 4, 5)
#This code will print the numbers from 1 to 5

#print all the elements, which have an even index.
#%% is the modulus operator. It shows the remaining of the division
for(i in 1:length(SecondVector)){
  if(i%%2 == 0){
    print(SecondVector[i]) 
  }
}

#print all the elements, which ARE even!
for(i in 1:length(SecondVector)){
  if(SecondVector[i]%%2 == 0){
    print(SecondVector[i]) 
  }
}

#Adding elements to a vector using a for loop. Will add 4, three times.

FifthVector <- SecondVector

for(i in 1:3) {
  FifthVector <- c(FifthVector, 4)
}

#If you throw a coin ten times, what is the probability of you getting
#two tails?

#We are simulating a coin toss using the sample function:
sample(c(0,1), 1)
#Where 1 will be tails. Check the help file on sample using the command ?sample
?sample

#We create a NULL vector and start adding the coin tosses
ResultsVector <- NULL
ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
ResultsVector
#We get a result and we can calculate how many tails we got by summing all
#the elements of the vector
sum(ResultsVector)
#And we can check if we got 2 tails:
sum(ResultsVector) == 2
#How to do this in a for loop?
ResultsVector <- NULL
for(i in 1:10){
  ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
}
sum(ResultsVector) == 2
#We want to repeat this 50 000 times and store the results in another vector.
#We put the above code in a loop, which repeats 50 000 times
#and create a new vector to store the TRUE/FALSE again as 1/0, by doing
#a if check on the sum(ResultsVector)
ResultsVector2 <- NULL
for(k in 1:50000){
  ResultsVector <- NULL
  for(i in 1:10){
    ResultsVector <- c(ResultsVector, sample(c(0,1), 1))
  }
  if(sum(ResultsVector) == 2){
    ResultsVector2 = c(ResultsVector2, 1)
  } else {
    ResultsVector2 = c(ResultsVector2, 0)
  }
}
#Then we divide the times we got exactly 2 tails, by the total number of trials
sum(ResultsVector2) / length(ResultsVector2)
#####For Loop#####