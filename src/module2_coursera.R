#assignment in r
a<-10
a
#vectors in r stores same time of data can be atomic or lists
a <- c(1.2,2.3,3.0)
typeof(a)
a <- c(1L,2L,3L)
typeof(a)
is.integer(a)
is.character(a)
#naming the values of a vector
names(a)=c("a","b","c")
#Lists are different from atomic vectors because their elements can be 
#of any type—like dates, data frames, vectors, matrices, and more. Lists can even contain other lists. 
str(list(list(1,2,3,TRUE)))
#date and time lubridate
install.packages("tidyverse") 
library(tidyverse)
today()
now()
ymd("2021-5-3")
mdy("january 2nd,2023")
dmy_hms("2-3-45 11:33:43")
#data frame
a <- data.frame(x=c(1,2,3),y=c(3,4,5))
#files
dir.create("destination_folder")
file.create("file1.txt")
file.copy("file1.txt","destination_folder")
unlink("file1.txt")
#matrix
a <- matrix(c(3:8),ncol=2)
#operators in r
q1_sales <- 123.32
q2_sales <- 4553.33
m=q1_sales+q2_sales
m=m*2
TRUE && TRUE
TRUE | FALSE
!TRUE
install.packages("palmerpenguins")
library("palmerpenguins")
#if else
x <- 1
if(x>2) {
  print("great")
} else if(x<2){
  print("great")
}else{
  print("great")
}

# tidyverse 

library("tidyverse")