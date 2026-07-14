## install.packages("tidyverse")

library(tidyverse)

rna <- read_csv("data/rnaseq.csv")

class(rna)

rna

dim(rna)
head(rna)

names(rna)
colnames(rna)
rownames(rna)

dfr <- data.frame(
  x = 1:3,
  y = LETTERS[1:3]
)

dfr

rownames(dfr) <- c("R1", "R2", "R3")

dfr
colnames(dfr)
rownames(dfr)

as_tibble(dfr)
as_tibble(dfr, rownames = "rnames")

## Select columns/variables

select(rna, gene, expression, sample)

select(rna, -tissue, -expression)

## Filter rows/observations

filter(rna, sex == "Female")

table(rna$infection)

filter(rna, sex == "Female" & 
         infection == "InfluenzaA")

filter(rna, sex == "Female",
       infection == "InfluenzaA")

View(filter(rna, sex == "Female",
       infection != "InfluenzaA"))

