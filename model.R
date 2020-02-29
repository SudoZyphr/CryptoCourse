library(ggplot2)
library(plotly)

data <- read.csv("btcDataFrame.csv")
data


scatter.smooth(x=data$Open, y=data$subjectivity, main="Subjectivity ~ Open")  # scatterplot
scatter.smooth(x=data$Open, y=data$polarity, main="Subjectivity ~ Open")  # scatterplot

plot(data$Open, data$subjectivity)

mod<-lm(Open~subjectivity, data=data)

mod1<-lm(Open~polarity, data=data)

summary(mod)
summary(mod1)