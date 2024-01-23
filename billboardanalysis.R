library(tidyr)
library(dplyr)
library(readr)
billboard
test_billboard<-pivot_longer(billboard,cols=starts_with("wk"),names_to = 'week',values_to = 'rank',values_drop_na = TRUE)

track_ranked<-test_billboard %>% 
  group_by(track,artist) %>% 
  summarise(highest_ranking=min(rank))
print(track_ranked)
track_ranked %>% 
  arrange(highest_ranking)

library(dplyr)
library(ggplot2)

# Assuming 'test_billboard' is your dataset
rank_1_counts <- test_billboard %>%
  filter(rank == 1) %>%
  group_by(artist, track) %>%
  summarise(count = n()) %>%
  arrange(desc(count))
print(rank_1_counts)

# Plotting the artists with the highest count at rank 1
ggplot(rank_1_counts, aes(x = reorder(artist, -count), y = count)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  geom_text(aes(label = track), angle = 90, hjust = 0, vjust = 0.5, size = 3, color = "black") +  # Rotate text labels vertically
  labs(title = "Artists with Highest Count at Rank 1",
       x = "Artist",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels
