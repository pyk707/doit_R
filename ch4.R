##ch4-1

#열은 컬럼, 변수라고 부른다
#행은 로(row), 케이스라고 부른다

english <- c(90, 08, 60, 70)
math <- c(50, 60, 100, 20)
class <- c(1,1,2,2)

#data.frame()로 행과 열을 만듬듬
df_midterm <- data.frame(english, math, class)
df_midterm

#$사용법
mean(df_midterm$english)
mean(df_midterm$math)

#한 번에 만들기
df_midterm <- data.frame(english = c(90,80,60,70),
                         math = c(50,60,100,20),
                         class = c(1,1,2,2))
df_midterm

#직접ㅋ 
df_fruites = data.frame(fruit = c('사과', '딸기', '수박'),
                        price = c(1800, 1500, 3000),
                        amount = c(28, 34, 13))
df_fruites
