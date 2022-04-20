p# Let's call the library
library(data.table)

# Let's set the working directory
setwd('/Users/analutzky/Desktop')

# Let's read our csv
Table_BTS=fread('Fichier_pierre_pour_melt.csv')

# showing it excel-like
View(Table_BTS)

# showing column names
colnames(Table_BTS)

var.names=colnames(Table_BTS)
### getting rid of space and special characters in columns names 
colnames(Table_BTS)=make.names(var.names)
# showing column names
colnames(Table_BTS)

Table_BTS_meltee = melt(Table_BTS,
						id.vars=c("Type.de.BTS","Spécialité"),
						measure.vars=patterns("^Bac"),
						variable.name="Type de bac",
						value.name=c("Nb Admis"))

write.csv2(as.data.frame(Table_BTS_meltee),file='BTS_meltee.csv',fileEncoding = "UTF8")