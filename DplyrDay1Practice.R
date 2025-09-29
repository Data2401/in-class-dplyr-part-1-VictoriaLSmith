# --------------------------------------------------
# dplyr Four-Verbs Challenge
# Practice: select, filter, mutate, arrange
# Dataset: starwars (comes with dplyr)
# --------------------------------------------------

library(dplyr)

## if you want to look at the metadata, run:
help(starwars)

# --------------------------------------------------
# TOGETHER
# --------------------------------------------------


# Create a pipeline using the following instructions:
# SELECT:
# Keep only name, height, mass, species, and homeworld.
# FILTER:
# From your selected dataset, filter to only characters taller than 180 cm.
# MUTATE:
# Create a new variable: bmi = mass / (height/100)^2
# ARRANGE
# Sort by bmi, highest first.
starwars %>%
  select(name,height,mass,species,homeworld) %>%
  filter(height > 180) %>%
  mutate('bmi'=mass/(height/100)^2) %>%
  arrange(desc(bmi))






# --------------------------------------------------
# ON YOUR OWN
# --------------------------------------------------

# SELECT:
# Keep only name, homeworld, and species.
# FILTER:
# Keep only humans.
# MUTATE:
# Add a variable height_m = height / 100 (convert to meters).
# ARRANGE:
# Sort by mass, lowest first.

starwars %>%
  mutate(height_m = height/100) %>%
  arrange(mass) %>%
  select(name,homeworld,species) %>%
  filter(species == 'Human')

# --------------------------------------------------
# Reflection Questions:
# --------------------------------------------------
# Disclaimer: I haven't run these yet :) 
# a) Which character has the highest BMI among those taller than 180 cm?
print('IG-88 has the the highest BMI')
# b) Who is the tallest human character in the dataset?
starwars %>%
  filter(species=='Human') %>%
  arrange(desc(height)) %>%
  select(name,height)
print("Darth Vader is the tallest human character")
# c) Which homeworld has the most characters taller than 180 cm?
starwars %>%
  filter(height>180) %>%

# d) Does the character with the highest BMI surprise you? Why or why not?
