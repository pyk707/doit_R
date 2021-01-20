#c는 combine의 머리글자
var2 <- c(1:5)
var2

#sequence
var3 <- seq(1,5)
var3

#by 써보기
var4 <- seq(1,10, by=2)
var4

var4+3

#문자가 담긴 변수 만들기
str1 <- 'a'
str2 <- 'hello world'
str3 <- c('Hello', 'you')

#다양한 함수 사용해보기
x <- c(1,2,3)
mean(x)
max(x)
min(x)

str5 <- c('Hello', "world", 'is', 'good')
#collapse처럼 함수의 옵션을 설정하는 명령어를 '파라미터'라고 함
paste(str5, collapse = "|")
