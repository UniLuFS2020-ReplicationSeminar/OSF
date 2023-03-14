#scatter plot over time in conservatism
plot_conservatism <- ERD %>%
  filter(v415e == 1) %>%
  ggplot() +
  geom_point(aes(x=v005e, y=v705e)) +
  ggtitle("unemployment over time in cabinets with conservative majority") +
  xlab("date (out)") +
  ylab("unemployment after legislative term") +
  theme_minimal()

#scatter plot over time in socialism
plot_socialism <- ERD %>%
  filter(v416e == 0) %>%
=======
ERD %>%
  filter(v416e == 1) %>%
  ggplot() +
  geom_point(aes(x=v005e, y=v705e)) +
  ggtitle("unemployment over time in cabinets with socialist majority") +
  xlab("date (out)") +
  ylab("unemployment after legislative term") +
  theme_minimal()

#categorise type of cabinet
ERD$majority_cabinet[ERD$v415e == 1] <- "conservative"
ERD$majority_cabinet[ERD$v416e == 1] <- "socialist"


#boxplot unemployment in different types of cabinets
plot_unemployment <- ERD %>%
=======
ERD %>%
  filter(! is.na(majority_cabinet)) %>%
  ggplot() +
  geom_boxplot(aes(x=majority_cabinet, y=v705e)) +
  ggtitle("unemployment in countries with different types of cabinets") +
  xlab("type of cabinet") +
  ylab("unemployment") +
  theme_minimal()
