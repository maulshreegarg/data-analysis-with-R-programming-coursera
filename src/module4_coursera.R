ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
# + adds layers to the plot
#bill length vs bill depth
ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm,color=species,shape=species))
ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm,alpha=species))
ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm),color="purple")
#geom_smooth
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
#geom_jitters
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g,linetype=species))
ggplot(data=penguins)+geom_jitter(mapping=aes(x=bill_length_mm,y=bill_depth_mm))
#bar chart
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut))
#colour bar chaart line border (color) and inside the bar (fill)
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut,color=cut))
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut,fill=cut))
#mapping fill to different column to showe a stacked bar
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut,fill=clarity))

#facet grid
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species))+facet_grid(sex~species)


#annotations 

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))+labs(title="penguin ",subtitle="aaaaa")

