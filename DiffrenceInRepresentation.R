install.packages('Tmisc')
library(dplyr)
library(tidyverse)
library(Tmisc)
View(quartet)
test_quartet<-quartet %>% 
  group_by(set) %>% 
  summarise(mean(x),sd(x),mean(y),sd(y),cor(x,y))
print(test_quartet)

ggplot(quartet,aes(x,y))+geom_point()+geom_smooth(method=lm,se=FALSE)+facet_wrap(~set)
#this exercise shows how you can oberserve daata in diffrent visualization,
#while the data looks similar in analysis, it shows the diffrence in visulizaiton.
install.packages('datasauRus')
library(datasauRus)
View(datasaurus_dozen)
ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = 'none')+facet_wrap(~dataset,ncol=3)
