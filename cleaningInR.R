install.packages("here")
library(here)
install.packages("dplyr")
library(dplyr)
install.packages("janitor")
library(janitor)
install.packages("skimr")
library(skimr)
install.packages("palmerpenguins")
library(palmerpenguins)
skim_without_charts(penguins)#gives you a summary of the data
glimpse(penguins)#gives you a summary of the data
penguins %>% 
  select(-species)#displays all the coloums other than species
penguins %>% 
  rename(island_new=island)#changes the coloumn name of island to island_new

rename_with(penguins,toupper)#changes the coloumn name to have all upper case
rename_with(penguins,tolower)#changes the coloum names to have all lower case
clean_names(penguins) # makes sure that the coloum names have only underscore and char.

print(penguins2)
library(tidyverse)
penguins2<-penguins %>% 
  arrange(bill_length_mm)#creates a new table where data is arranged by bill length
head(penguins2)

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% #groups data based on island and the summerize it by mean of bill length,bill depth & flipper length
  summarise(mean_bill_length=mean(bill_length_mm),mean_bill_depth=mean(bill_depth_mm),mean_flipper_lenght=mean(flipper_length_mm))

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(max_bill_length=max(bill_length_mm)) # groups data based on island and summerize it based on max bill length

penguins2 %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(count=n())#groups data and summarizes it to find the total count of data on each island 
print(distinct(penguins,island)) #prints distinct values of islands

penguins %>% 
  filter(island=="Torgersen") %>% 
  drop_na()#filters data to find the data about island torgersen.

#drop_na() is used to remove null values.

united_table<-penguins2 %>% 
  arrange(island) %>% 
  select(species,island) %>% 
  unite(species_island,c("species","island"),sep=", ") #unite is used to combine two coloums and create a new df called united_table with values of species, island arranged by island.


id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)
print(employee)

employee<-separate(employee,name,into = c("first_name","last_name"),sep=' ')

print(employee)
employee<-unite(employee,'name',first_name,last_name,sep=' ')
print(employee)


