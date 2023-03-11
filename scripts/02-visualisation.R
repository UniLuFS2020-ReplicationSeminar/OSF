#scatter plot over time in conservatism
ERD %>%
  filter(v415e == 1) %>%
  ggplot() +
  geom_point(aes(x=v005e, y=v705e)) +
  ggtitle("unemployment over time in cabinets with conservative majority") +
  xlab("date (out)") +
  ylab("unemployment after legislative term") +
  theme_minimal()

#scatter plot over time in socialism
ERD %>%
  filter(v416e == 0) %>%
  ggplot() +
  geom_point(aes(x=v005e, y=v705e)) +
  ggtitle("unemployment over time in cabinets with socialist majority") +
  xlab("date (out)") +
  ylab("unemployment after legislative term") +
  theme_minimal()

#categorise type of cabinet
ERD$conservative[ERD$v415e == 1] <- "conservative"
ERD$conservative[ERD$v415e == 0] <- "socialist"

#boxplot unemployment in different types of cabinets
ERD %>%
  ggplot() +
  geom_boxplot(aes(x=conservative, y=v705e)) +
  ggtitle("unemployment in countries with different types of cabinets") +
  xlab("type of cabinet") +
  ylab("unemployment") +
  theme_minimal()
