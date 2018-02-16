lots <- readRDS('data/manhattan_Train.rds')

View(lots)

high1 <- glm(High ~ LotArea + NumFloors + OwnerType + Landmark,
             data=lots,
             family=binomial)
summary(high1)
class(high1)

library(coefplot)
coefplot(high1, sort='magnitude')
coefplot(high1, sort='magnitude', trans=invlogit)

lotsTest <- readRDS('data/manhattan_Test.rds')

library(dplyr)
set.seed(4356)
lotsTest_small <- lotsTest %>% sample_n(20)

highPred1.1 <- predict(high1, newdata=lotsTest_small, se.fit=TRUE)
highPred1.1$fit

highPred1.2 <- predict(high1, newdata=lotsTest_small, se.fit=TRUE,
                       type='response')

round(highPred1.2$fit, 2)
