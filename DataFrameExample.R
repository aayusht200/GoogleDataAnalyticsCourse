library(tidyverse)
library(ggplot2)
View(diamonds)
mutate(diamonds,carat_2=carat*100)


name<-c("Aayush","Aay","Aayu","Anil","Alice", "Bob", "Charlie","Aayush","Aay","Aayu","Anil","Alice", "Bob", "Charlie")
age<-c(1:14)
people<-data.frame(name,age)
view(people)
glimpse(people)#will provide a 
str(people)
mutate(people,age_in_twenty=age*20)
print(people)
test_tibble<-tibble(name,age)
print(test_tibble)
print(people)


# Tibble allows spaces in column names
tbl <- tibble("Column Name" = c(1, 2, 3))

# Data frame with potential type conversion and different syntax
df <- data.frame("Column Name" = c(1, 2, 3))
# Returns a tibble
selected_tbl <- test_tibble %>% select(1)


# Tibble
tbl <- tibble(x = c("a", "b", "c"))

# Data frame (might convert to factors)
df <- data.frame(x = c("a", "b", "c"))

