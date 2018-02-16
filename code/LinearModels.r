data(father.son, package='UsingR')
head(father.son)

library(ggplot2)

ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point()
ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point() + 
    geom_smooth(method='lm')

height1 <- lm(sheight ~ fheight, data=father.son)
height1

33.8866 + 0.5141*60
33.8866 + 0.5141*50
33.8866 + 0.5141*72
33.8866 + 0.5141*0

lots <- readRDS('data/manhattan_Train.rds')
View(lots)

names(lots)

value1 <- lm(TotalValue ~ LotArea + UnitsTotal, data=lots)
value1

unique(lots$OwnerType)

value2 <- lm(TotalValue ~ LotArea + UnitsTotal + OwnerType, data=lots)
value2

summary(value2)

library(coefplot)
coefplot(value2, sort='magnitude')
# this looks better on a Mac and Linux
coefplot(value2, sort='magnitude', lwdOuter=0.1)


source('https://raw.githubusercontent.com/jaredlander/LiveFebruary2018/master/code/Boros.r')

boros

library(useful)

build.x( ~ Pop, data=boros)
build.x( ~ Pop + Size, data=boros)
build.x( ~ Pop * Size, data=boros)
build.x( ~ Pop : Size, data=boros)
build.x( ~ Pop + Pop : Size, data=boros)
build.x( ~ Pop * Size - Size, data=boros)
build.x( ~ Pop * Size * Random, data=boros)

build.x( ~ Pop + Boro, data=boros)
