data(tips, package='reshape2')
head(tips)
mean(tips$tip)
sd(tips$tip)

t.test(tips$tip, mu=2.50, alternative='two.sided')

0.10
0.05
0.01

t.test(tip ~ sex, data=tips, var.equal=TRUE)
