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

timesN <- function(x, n)
{
    return(x * n)
}

timesN(2, 3)
timesN(4, 5)

# this will return an error because we forgot the second argument
timesN(6)

timesN <- function(x, n=2)
{
    return(x * n)
}

timesN(5, 7)
timesN(5)
