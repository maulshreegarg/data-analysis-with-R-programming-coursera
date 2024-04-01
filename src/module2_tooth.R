data("ToothGrowth")
view(ToothGrowth)
install.packages("dplyr")
library("dplyr")
filteredtooth <- filter(ToothGrowth,dose==0.5)
print(filteredtooth)
arrange(filteredtooth,len)
#nested function
arrange(filter(ToothGrowth,dose==0.5),len)
# pipe operator
filteredtooth <- ToothGrowth%>%
  filter(dose==0.5)%>%
  arrange(len)
filteredtooth <- ToothGrowth%>%
  filter(dose==0.5)%>%
  group_by(supp)%>%
  summarise( meant=mean(len))
