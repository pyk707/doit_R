##English
# Our deepest fear is not that we are not inadequate.
# Our deepest fear is that we are powerful beyond measure.
# It is our light, not our darkness, that most frightens us.
# Your playing small does not serve the world.
# There is nothing enlightend about shrinking so that other people won't feel insecure around you.
# We are all meant to shine as children do.
# It's not just in some of us, it is in everyone.
# And as we let our own lights shine, we unconsciously give other people permission to do the same.
# As we are liberated from our own fear, our presence automatically liberates others.
# by Nelson Mandela

##데이터 전처리리

library(dplyr)
exam <- read.csv("csv_exam.csv")
exam

#filter
exam %>% filter(class == 1)
exam %>% filter(class == 1 & math > 40)
exam %>% filter(math>=90 | english >=80)

# %in%을 사용하면 코드를 효율적으로 사용할 수 있음
# %in%은 매칭을 확인할 때 사용
exam %>% filter(class %in% c(1,2,3))

class1 <- exam %>% filter(class == 1)
mean(class1$math)


#select
exam %>% select(math, class)
exam %>% select(-math)


exam %>%
  filter(class==1) %>%
  select(math, class)

exam %>%
  select(id, math) %>%
  head(10)

#arrange
exam %>%
  arrange(math)

exam %>%
  arrange(desc(math))

exam %>%
  arrange(class, math)

#mutate_파생변수추가
exam %>%
  mutate(total = math + english + science)

exam %>%
  mutate(total = math + english + science,
         mean = (math + english + science)/3)

exam %>%
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>%
  head

exam %>%
  mutate(total = math + english + science) %>%
  arrange(total)


#summarise()_집단별로 요약하기

exam %>%
  group_by(class) %>%                   #class별로 분리
  summarise(mean_math = mean(math),     #math 평균
            sum_math = sum(math),       #math 합계
            median_math = median(math), #math 중앙값
            n = n())                    #학생수(빈도를 나타냄)

head(mpg)

mpg %>%
  group_by(manufacturer) %>%
  filter(class == "suv") %>%
  mutate(tot = (cty+hwy)/2) %>%
  summarise(mean_tot = mean(tot)) %>%
  arrange(desc(mean_tot))




#데이터 합치기
#가로로 합치기
test1 <- data.frame(id = c(1,2,3,4,5),
                    midterm = c(60,80,70,90,85))
test2 <- data.frame(id = c(1,2,3,4,5),
                    final = c(70,83,65,95,80))
test1
test2

total_left <- left_join(test1,test2, by = 'id')
total_left

name <- data.frame(class = c(1, 2, 3, 4, 5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name
exam

exam_new <- left_join(exam, name, by = "class")
exam_new

#세로로 합치기
# 학생 1~5번 시험 데이터 생성
group_a <- data.frame(id = c(1, 2, 3, 4, 5),
                      test = c(60, 80, 70, 90, 85))
# 학생 6~10번 시험 데이터 생성
group_b <- data.frame(id = c(6, 7, 8, 9, 10),
                      test = c(70, 83, 65, 95, 80))
group_a
group_b

group_all <- bind_rows(group_a, group_b)
group_all
