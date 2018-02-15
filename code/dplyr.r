library(dplyr)

data(diamonds, package='ggplot2')

head(diamonds)
head(diamonds, n=10)

tail(diamonds, n=4)

head(diamonds)
diamonds %>% head()

head(diamonds, n=4)
diamonds %>% head(n=4)

diamonds %>% head()

tail(head(diamonds, n=4), n=1)
diamonds %>% head(n=4) %>% tail(n=1)

diamonds %>% select(carat, price)
select(diamonds, carat, price)

diamonds

smallDiamonds <- diamonds %>% select(carat, price)
smallDiamonds
diamonds

diamonds %>% select(carat, price, cut)

diamonds %>% slice(c(3, 17, 20018))

diamonds %>% filter(carat > 1)
diamonds %>% filter(carat > 1 & cut == 'Ideal')
diamonds %>% filter(carat > 1 | cut == 'Premium')


diamonds %>% mutate(price / carat)
326/.23
diamonds
newDiamonds <- diamonds %>% mutate(price / carat)
newDiamonds
diamonds

diamonds %>% mutate(Ratio=price / carat)
newDiamonds %>% mutate(cut=NULL)
newDiamonds <- newDiamonds %>% mutate(cut=NULL)
newDiamonds

diamonds %>% summarize(mean(price))
diamonds %>% summarize(mean(price), sum(carat))
diamonds %>% summarize(AvgPrice=mean(price), TotalSize=sum(carat))

diamonds

diamonds %>% group_by(cut)
diamonds

diamonds %>% group_by(cut) %>% summarize(AvgPrice=mean(price))
summarize(group_by(diamonds, cut), AvgPrice=mean(price))

diamonds %>% 
    filter(carat > 1) %>% 
    group_by(cut, color) %>% 
    summarize(AvgPrice=mean(price), TotalSize=sum(carat))
