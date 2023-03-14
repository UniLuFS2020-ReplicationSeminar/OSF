library("stargazer")

ERD$dummy_majority_cabinet[ERD$v415e == 1] <- 1
ERD$dummy_majority_cabinet[ERD$v416e == 1] <- 0


bi_regress <- lm(v705e ~ dummy_majority_cabinet, data = ERD)
summary(bi_regress)


stargazer(bi_regress,
          type = "text",
          style = "apsr",
          out = "output/regression_unemp_cabinet.txt") 


plot(x = ERD$dummy_majority_cabinet, y = ERD$v705e)
abline(bi_regress)
