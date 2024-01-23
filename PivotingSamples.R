library(tidyr)
library(dplyr)
library(readr)
print(relig_income)
test_relig_income<-pivot_longer(relig_income,cols = !religion,names_to = 'income',values_to = 'count')
print(test_relig_income)
test_relig_income<-pivot_wider(test_relig_income,names_from = 'income',values_from = 'count')
print(test_relig_income)
billboard
test_billboard<-pivot_longer(billboard,cols=starts_with("wk"),names_to = 'week',values_to = 'rank',values_drop_na = TRUE)
print(test_billboard)
test_billboard<-pivot_wider(test_billboard,names_from = week,values_from = rank)
print(test_billboard)

who
test_who<-who %>% 
  pivot_longer(cols =starts_with("new"),names_to = 'test',values_to = 'count')

test_who<-test_who %>% 
  separate(test,into = c("spam","diagonsis","gender"),sep = "_") %>% 
  separate(gender,into = c("gender","age"),sep = 1) %>% 
  select(-spam)
print(test_who)


