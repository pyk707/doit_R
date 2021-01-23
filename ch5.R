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
