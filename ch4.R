##ch4

#열은 컬럼, 변수라고 부른다
#행은 로(row), 케이스라고 부른다

english <- c(90, 08, 60, 70)
math <- c(50, 60, 100, 20)
class <- c(1,1,2,2)

#data.frame()로 행과 열을 만듬듬
df_midterm <- data.frame(english, math, class)
df_midterm

#'$'사용법 <- 열에 대해서 사용용
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


#외부 데이터 이용하기
install.packages("readxl")
library(readxl)

#df_exam <- read_excel("d:/easy_r/excel_exam.xlsx") ← 다른 경로의 파일은 이런 식으로
#기본 적으로 첫 행을 변수명으로 불러온다
df_exam = read_excel("excel_exam.xlsx")
df_exam

mean(df_exam$math)

#만약 첫 행이 변수명이 아니라면
#다음과 같이 불러옴
df_exam_novar = read_excel("excel_exam.xlsx", col_names = F)
df_exam_novar

#sheet가 여러 개라면
df_exam_sheet <- read_excel("excel_exam.xlsx", sheet = 3)
df_exam_sheet



#csv파일도 동일
df_csv_exam <- read.csv("csv_exam.txt")
df_csv_exam

#문자가 들어있는 csv파일은 stringsAsFactors = F 설정
df_csv_exam <- read.csv("csv_exam.txt", stringsAsFactors = F)
df_csv_exam


#데이터 프레임 CSV 파일로 저장하기
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
write.csv(df_midterm, file = "df_midterm.csv")
