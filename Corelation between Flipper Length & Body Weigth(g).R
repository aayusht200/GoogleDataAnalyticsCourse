install.packages('ggplot2')
library(ggplot2)
library(palmerpenguins)
library(dplyr)
data("penguins")
ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g))
ggplot(data = penguins)+geom_bar(mapping = aes(x=island))
ggplot(data = penguins)+geom_histogram(mapping = aes(x=flipper_length_mm))


ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g, colour=island,shape=sex))+# used to create point chart
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g,linetype=species),se=FALSE)+#used to show the trend line
  labs(x="Flipper Length",y="Body Weight(g)",title = "Corelation between Flipper Length & Body Weigth(g)") #used to create labels

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,colour=species))+
  facet_wrap(sex~species)

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,colour=species))+
  facet_grid(sex~species)

diamonds_test<-diamonds %>% 
  group_by(clarity,cut) %>% 
 summarise(count=n())

diamonds_test<-diamonds_test %>% 
  arrange(count)

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut,fill=clarity))+
  geom_text(data = diamonds_test, mapping = aes(x=cut,y=count,label=count),position = position_stack(vjust = 0.7))

View(diamonds)
ggplot(data = diamonds)+geom_bar(mapping = aes(x=color,fill=cut))+facet_grid(~cut)


