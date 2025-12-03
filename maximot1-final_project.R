# Descriptive Statistics
table(data$player_national)

summary(data$strikeout_rate)

# Plot the box plot
library(ggplot2)
ggplot(data, aes(x= player_national, y=strikeout_rate, fill=as.factor(player_national))) +
  geom_boxplot() +
  labs(
    title="Comparison Between Strikeout Rate and Player Nationality", 
    x= "Player Nationality",
    y= "Strikeout Rate"
  )+
  theme_minimal()+
    theme(legend.position="none")
  
# Perform a two-sample t-test comparing strikeout rates between player nationalities 
t_test_result<-t.test(strikeout_rate~player_national,data=data)

# View the result
print(t_test_result)

# Create a Histogram
hist(data$strikeout_rate)