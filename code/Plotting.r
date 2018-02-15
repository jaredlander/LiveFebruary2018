library(ggplot2)
data(diamonds, package='ggplot2')

diamonds

ggplot(diamonds)

ggplot(diamonds, aes(x=carat, y=price))

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(shape=1, size=1)

ggplot(diamonds, aes(x=carat, y=price, color=cut)) +
    geom_point(shape=1, size=1) +
    geom_smooth()

ggplot(diamonds, aes(x=price)) + geom_histogram()
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=100)
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=10)

ggplot(diamonds, aes(x=price)) + geom_density()
ggplot(diamonds, aes(x=price)) + geom_density(color='red', fill='blue')


ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(shape=1, size=1) + 
    facet_wrap( ~ cut)

ggplot(diamonds, aes(x=cut, y=price)) + geom_boxplot()
ggplot(diamonds, aes(x=cut, y=price)) + geom_violin()

ggplot(diamonds, aes(x=cut, y=price)) + geom_violin() + geom_point()
ggplot(diamonds, aes(x=cut, y=price)) + geom_violin() + geom_jitter()
ggplot(diamonds, aes(x=cut, y=price)) + geom_jitter() + geom_violin()

ggplot(diamonds, aes(x=cut, y=price)) + 
    geom_jitter(alpha=1/5, size=1, shape=1, width=0.35, aes(color=carat)) + 
    geom_violin(alpha=1/2, color='grey50', draw_quantiles=c(.25, .50, .75)) +
    scale_color_gradient('carat', low='#56B1F7', high='#c91010') + 
    labs(x='Cut', y='Price', title='Price vs Cut and Carat')
