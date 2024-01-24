library(ggplot2)
library(palmerpenguins)
View(penguins)

test<-ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,colour=species))+
  labs(title = "Palmer Penguins: FLipper Length vs. Body Mass",subtitle = "Sample of 3 penguins species",caption = "Data by Dr.")+
  annotate("text",x=220,y=4100,label="Gentoo are the largest",fontface="bold")
test

test+annotate("rect",xmin = 210,xmax = 230,ymin = 4000,ymax = 6000,fill="blue",alpha=0.2)
ggsave("Test.pdf")
