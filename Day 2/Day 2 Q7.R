exam_data = data.frame(
  name = c('Anastaia', 'Dima', 'katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'kevin', 'Joans'),
  soure = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attepts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'NO', 'NO', 'Yes')
)
print("Original dataframe:")
print(exam_data)
new_exam_data = data.frame(
  name = c('Robert', 'Sophia'),
  soure = c(10.5, 9),
  attepts = c(1, 3),
  qualify = c('Yes', 'No')
)
exam_data = rbind(exam_data, new_exam_data)
print("After adding new row(s) to an existing data frame:")
print(exam_data)