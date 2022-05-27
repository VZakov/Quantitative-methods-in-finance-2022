#From Financial analytics with R read Chapter 3.7, 3.8, 7.1

#Download data for five stocks of your choice + SPY
#####Problem 1#####
# Read Chapters 3.7 and 3.8 and calculate the alpha and beta for each
# of the five stocks
#####Problem 1#####

#####Problem 2#####
# Simulate the efficient frontier of a portfolio created by the 5 stocks
# you have chosen. Here is a solution written in Python.
# https://www.interviewqs.com/blog/efficient-frontier
# Pay attention that you should use portfolio returns: The percentage
# change in the stock price: price-lag(price)/lag(price)

# Create a table with randomized weights, which add up to one.
# I'd suggest to start with 5 columns - one for each of 
# the stocks, which contain the corresponding weights.
# Then you can add twenty-three additional columns:
# Five columns with the expected return for each of the stocks.
# Five columns with the standard deviation for each of the stocks.
# Ten columns with the covariances between each two stocks(5*4/2 = 10)
# Two column for Expected return and the standard deviation of the portfolio
# One column for Sharpe ratio, which you will calculate and add later.
# This is the formula for the sum of expected values - E[aX+bY] = aE[X]+ bE[Y].
# The formula for variances is Var(aX+aY)=a^2*Var(X)+b^2*Var(Y)+2Cov(X,Y). 
# And then take the square root to get the standard deviation.
# Calculate the Sharpe ratio, using risk free rate of 1% - look at chapter 7.1.
# Choose the portfolio with the highest Sharpe ratio.
#####Problem 2#####
