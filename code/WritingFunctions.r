sayHello <- function()
{
    print('Hello, World!')
}

sayHello()

timesTwo <- function(x)
{
    return(x * 2)
}

timesTwo(15)

timesTwo <- function(x)
{
    x * 2
}

timesTwo(10)


timesTwo <- function(x)
{
    x <- x * 2
    
    return(x)
}