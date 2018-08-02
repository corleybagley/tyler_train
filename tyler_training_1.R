class(NULL)

# strings are for text. "character"
string_tyler <- 'NULL'
class(string_tyler)

null_tyler <- NULL

# as.character converts anything to a string
one = as.character(1)
two = as.character(2)

# paste connects 2+ strings
paste(one, two)

paste(one, two, sep=' and-a ')

sprintf('I have %s donut, you have %s donuts',one, two)
sprintf('I have %s donut, you have %s donuts',1, 2)
sprintf('I have %s donuts, you have %s donuts',sample(2:100,1), sample(2:100,1))

donuts <- sprintf('I have %s donuts, you have %s donuts',sample(2:100,1), sample(2:100,1))

nchar(donuts)
substr(donuts,8,9)
strsplit(donuts,' ')
class(strsplit(donuts,' '))

strsplit(donuts,'donuts')
strsplit(strsplit(donuts,'donuts')[[1]],'a')

guess <- strsplit(donuts,'')

guess <- guess[[1]]

length(guess)
guess
unique(guess)
length(unique(guess))
as.integer(guess)

# Numbers
int_tyler <- 30
class(int_tyler)

int_tyler ^ 2
int_tyler * 2
int_tyler + 2
int_tyler - 49
int_tyler/20


# Vectors
sample_vec <- c(1, 2, 3)
class(sample_vec)
sample_vec
1:3

c(sample_vec, 4)
mean(c(sample_vec,4))
sum(c(sample_vec,4))

c(sample_vec, '4')
mean(c(sample_vec, '4'))
paste(c(sample_vec, '4'),collapse=' ')
paste(c(sample_vec, 4),collapse=' ')

# More Vectors
vec_tyler <- rnorm(1000,100,5)
mean(vec_tyler)
sum(vec_tyler)
summary(vec_tyler)

vec_tyler[5]
head(vec_tyler)
vec_tyler[1:5]

# Lists
list(1,2,3,4,5)
ex_list <- list(one = 1, two = 2, three = 3, four = 4, five = 5)
ex_list$one

list_tyler <- list(first_name = 'Tyler', age = 30, middle_name = 'Perry', last_name='Widdison',aka = "NULL", gender='Male', skills=c('Bump, Set, Spike','Jumping High','Raging','Tylerisms','Temple Attendance','Daddy', 'Kicking Dogs'))

# $ accesses "downstream" values
list_tyler$first_name
list_tyler$skills
class(list_tyler$skills)

# Make 3 lists this time with skills as True/False statements instead of a list
tyler <-list(first_name = 'Tyler', age = 30, middle_name = 'Perry', last_name='Widdison',aka = "NULL", gender='Male', 
             Bump_Set_Spike = T, jumping_high = TRUE,raging = T,tylerisms =T,temple_attendance = TRUE,daddy=T,kicking_dogs = TRUE, r_skills = F, being_female = FALSE)

corley <- list(first_name = 'Corley', age = 28, middle_name = 'Felton', last_name='Bagley',aka = "Gaz", gender='Male', 
               Bump_Set_Spike = F, jumping_high = F,raging = T,tylerisms =F,temple_attendance = F,daddy=T,kicking_dogs = F, r_skills = T, being_female = FALSE)

tori <- list(first_name = 'Tori', age = NA, middle_name = 'Unknown', last_name='Phillips',aka = "Emmett", gender='Female', 
             Bump_Set_Spike = T, jumping_high = F,raging = F,tylerisms =T,temple_attendance = T,daddy = F,kicking_dogs = F, r_skills = F, being_female = T)

# Combine them

peeps_list <- list(tyler = tyler, corley = corley, tori = tori)
# peeps_list = 
# [
#   tyler = [list of objects]
#   corley = [list of objects]
#   tori = [list of objects]
# ]
peeps_list$tyler$r_skills

# Using lists
sapply(peeps_list,'[[','last_name')
sort(sapply(peeps_list,'[[','aka'))

for(value in tyler){
  print(value)
}

for(person in peeps_list){
  print(person$first_name)
}


print(unname(unlist(peeps_list)))
for(person in names(peeps_list)){
  values <- peeps_list[person][[1]]
  for(value in names(values)){
    print(sprintf('%s %s = %s',person, value, values[value]))
  }
}

peeps_list$tyler$jumping_high <- F
peeps_list$tyler

# list of lists of lists of lists......
example <- list(peeps_list, peeps_list, peeps_list)

list(example,peeps_list,example,example)
# Let's make a dataframe

peeps <- data.frame(rbind(data.frame(tyler, stringsAsFactors = F),data.frame(corley, stringsAsFactors = F),data.frame(tori, stringsAsFactors = F)), stringsAsFactors = F)
peeps

# Filtering
peeps[peeps$being_female,]
peeps[peeps$age > 25,]
peeps[peeps$tylerisms,]
peeps[substr(peeps$first_name,1,1)=='T',]
peeps[peeps$middle_name == 'Unknown',]
peeps[nchar(peeps$first_name) > 4,]

# Quop Pizz
