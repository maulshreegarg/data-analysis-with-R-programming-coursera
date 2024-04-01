install.packages("palmerpenguins")
library("palmerpenguins")
install.packages("ggplot2")
library("ggplot2")
#compare body mass and flipper length
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point()
#make all points purple
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(color="purple")
#different colour for different species
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(color=species))
#different shape for species
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(shape=species))
#both colour and shape for different species
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(color=species,shape=species))
#different plot for each species
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(color=species,shape=species))+facet_wrap(~species)
#ADD LABEL
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point()+labs(title="compare body mass and flipper length")
