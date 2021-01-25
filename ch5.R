##ch5 데이터 파악

#데이터를 파악할 때 주로 쓰는 함수
#head(), tail(), View(), dim(), str(), summary()

#4장의 데이터를 활용해서 함수를 알아보자
exam <- read.csv("csv_exam.csv")
exam

#head는 기본 6행
head(exam)
head(exam, 10)

#tail는 뒤에서 기본 6행
tail(exam)

#View 뷰어 창에서 보여줌
View(exam)

#dim은 행, 열
dim(exam)

#str()은 속성
str(exam)

#summary 정리
#1st Qu: 1사분위수(1st Quantile) 하위 25%(4분의 1) 지점에 위치하는 값
#3rd Qu: 3사분위수(3rd Quantile) 하위 75%(4분의 3) 지점에 위치하는 값
summary(exam)


##ggplot2를 사용해보자
install.packages("ggplot2")

#as.data.frame은 데이터 속성을 데이터 프레임 형태로 바꾸는 함수
mpg <- as.data.frame(ggplot2::mpg)
mpg

#mpg에 어떤 데이터가 있을까
summary(mpg)
dim(mpg)
head(mpg)
View(mpg)
str(mpg)
?mpg



##dplyr을 통한 변수명 바꾸기
install.packages("dplyr")
library(dplyr)
#형식 → rename(dataframe, var = original_var)

new_mpg <- mpg
new_mpg = rename(new_mpg, highway = hwy)
View(new_mpg)


#파생변수를 이용한 분석
new_mpg$mean_cty_hwy <- (new_mpg$cty + new_mpg$highway)/2

head(new_mpg)

mean(new_mpg$mean_cty_hwy)
summary(new_mpg$mean_cty_hwy)
hist(new_mpg$mean_cty_hwy)


##조건문을 통한 합격 판정 변수 만들기
new_mpg$mean_cty_hwy
ifelse(new_mpg$mean_cty_hwy >= 20, "pass", "fail")

new_mpg$mean_cty_hwy <- ifelse(new_mpg$mean_cty_hwy >= 20, "pass", "fail")
new_mpg


#qplot
library(ggplot2)
qplot(new_mpg$mean_cty_hwy)
View(new_mpg)


#중첩 조건문
new_mpg = rename(new_mpg, mean_value_cty_hwy = cty_plus_hwy)
new_mpg = rename(new_mpg, mean_pass = mean_cty_hwy)

View(new_mpg)
new_mpg$grade <- ifelse(new_mpg$mean_v)