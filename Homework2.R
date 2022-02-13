#URL for GitRepository - https://github.com/BrentVespa/CSC-302
# #1
# Creation of a Data Frame named df1, in which column 1 is names, column 2 is state, and column 3 is sales
df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))

#Aggreation of Sales by State.
aggregate(df1$Sales, by=list(df1$State), FUN=sum)

#Adds dplyr library.
library(dplyr)

#OUtput df1 groups by states and summarised by Sales.
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))

######################
# #2
df = read.delim("C:/Users/brent/Documents/Classes/Data_Visualization/Tables/WorldCupMatches.csv", sep = ',', header = TRUE)
head(df)

# #2.a
nrow(df)
ncol(df)

# #2.b
summary(df)

# #2.c
unique(df[('City')]) %>% count()

# #2.d
mean(df$Attendance, na.rm =T)

# #2.e
df %>% group_by(Home.Team.Name) %>% summarise(Home.Team.Goals = sum(Home.Team.Goals))

# #2.f
df  %>% group_by(Year) %>% summarise(Attendance = mean(Attendance, na.rm =T))

####################################
# #3
dfq3 = read.delim("C:/Users/brent/Documents/Classes/Data_Visualization/Tables/metabolite.csv", sep = ',', header = TRUE)
head(dfq3)

# #3.a
dfq3[dfq3$Label=='Alzhimer'] %>% count()

# #3.b
colSums(is.na(dfq3))

# #3.c Not sure how to get this to fully work, as the dataframe I am getting is empty.
removedDF = is.na(dfq3$Dopamine==FALSE) %>% rm()

# #3.d No idea if this would actual work, given that I was unable to do 3.c
replace(removedDF[(c4-OH-Pro)], 'NA' , median(removedDF[(c4-OH-Pro)]))

# #3.e (Optional) Not sure how to do this one nor do I know where to start, as I would guess you could check if a column has anything there, and then divide that by how many don't have things there, but that doesn't seem right.