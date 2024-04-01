library("ggplot2")
data("diamonds")
head(diamonds)
str(diamonds)
colnames(diamonds)
library(tidyverse)
mutate(diamonds,carat2=carat*2)
install.packages("readxl")
library(readxl)
a <- read_excel("biteanalysis.xlsx")
install.packages("here")
library(here)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library(janitor)
library(palmerpenguins)
skim_without_charts(penguins)
glimpse(penguins)
#select only yhe island
penguins%>%
  select(species)
#select everything but species
penguins%>%
  select(-species)
rename_with(penguins,tolower)
clean_names(penguins)
penguins%>%
  group_by(island)%>%
  drop_na()%>%
  summarise(meane=median(bill_length_mm))
penguins%>%
  group_by(island,species)%>%
  drop_na()%>%
  summarise(meane=median(bill_length_mm),meanes=mean(bill_length_mm))
#transforming data
a <- data.frame(name=c("john smith"),year=c(2200))
library(tidyverse)
a <- separate(a,name,into=c("first","last"),sep=' ')
unite(a,name,first,last,sep=" ")
penguins%>%
  mutate(body_mass_kg=body_mass_g/1000)
install.packages("Tmisc")
library("Tmisc")
data("quartet")
quartet%>%
  group_by(set)%>%
  summarise(meanvalx=mean(x),sdvx=sd(x),meanvaly=mean(y),sdvy=sd(y),corr=cor(x,y))
#visualise
ggplot(quartet,aes(x=x,y=y))+geom_point()+geom_smooth(method=lm)+facet_wrap(~set)

#bias

install.packages("SimDesign")
library(SimDesign)
actual_temp <- c(11,1,4,3)
predicted_temp <- c(7,2,3,4)
bias(actual_temp,predicted_temp)