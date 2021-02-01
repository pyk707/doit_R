#데이터 정제(빠진 데잍, 이상한 데이터 제거하기)
#p164


df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

library(dplyr)

is.na(df)
table(is.na(df))

table(is.na(df$sex))
table(is.na(df$score))

df %>% 
  filter(is.na(score))