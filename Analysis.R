library("dplyr")
#install.packages("ggplot2")
library("ggplot2")
# Create two subsets of data
legal_states <- filter(data, LEGAL == 1)
non_legal_states <- filter(data, LEGAL == 0)

# Perform the t-test
t_test_result <- t.test(legal_states$POP_CHG, non_legal_states$POP_CHG)

# View the results
t_test_result

ggplot(data, aes(x = factor(LEGAL), y = POP_CHG)) +
  geom_boxplot() +
  labs(title = "Population Change by Marijuana Legalization Status",
       x = "Marijuana Legalized (1 = Yes, 0 = No)",
       y = "Population Change") +
  theme_minimal()