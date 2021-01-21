#Ch3-3

#패키지
install.packages("ggplot2")
#패키지를 로드할 땐, library()를 사용
library(ggplot2)


#빈도
x = c("a", "b", "c", "c")
qplot(x)

#ggplot2에는 mpg 데이터가 있다. 234종의 연비 관련 공개 자료
#파라미터 설정을 바꿔보면서 qplot()의 기능이 어떻게 달라지는지 살펴보겠습니다.
#qplot()의 data 파라미터에 mpg 데이터를 지정하고, 그래프의 x축을 결정하는 x 파라미
#터에 hwy를 지정해 ‘고속도로 연비별 빈도 막대 그래프’를 만들겠습니다. hwy는 자동차가
#고속도로에서 1갤런에 몇 마일을 가는지 나타낸 변수입니다.

qplot(data = mpg, x = hwy)
qplot(data = mpg, x = cty)
qplot(data = mpg, x = drv, y = hwy)
qplot(data = mpg, x = drv, y = hwy, geom = "line")
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", color = drv)

?qplot

#77p 문제
a = 80
b = 60
c = 70
d = 50
e = 90
students_mean = mean(a,b,c,d,e)
students_mean
