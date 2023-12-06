##Functions used to clean penguin data!

##Function to remove N/A values
penguins <- na.omit(penguins)

##Function to shorten species names
Clean_data <- penguins %>% 
  mutate(species = substr(species,1,3))

##Function to shorten island names
Clean_data <- penguins %>%
  mutate(island = substr(island,1,3))

##Pipeline to clean data entirely
Clean_data <- penguins %>%
  na.omit() %>%
  mutate(island = substr(island,1,3)) %>%
  mutate(species = substr(species,1,3)) 