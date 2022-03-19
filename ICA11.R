library(ggplot2)
library(tidyr)
library(dplyr)
flights = read.csv("C:/Users/brent/Documents/Classes/Data_Visualization/Tables/flights.csv") #please change the path if needed

ggplot(flights) + geom_line(aes(x=year, y=passengers, color=month)) + theme_bw() +
  xlab('Month') + ylab('Passengers') + ggtitle("Flights.CSV Graph")

ggsave('C:/Users/brent/Documents/Classes/Data_Visualization/Tables/Image.png', p1)
