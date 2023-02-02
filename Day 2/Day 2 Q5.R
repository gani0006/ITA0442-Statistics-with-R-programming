exam_data = data.frame(
  name = c('Anastaia', 'Dima', 'katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'kevin', 'Joans'),
  soure = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attepts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'NO', 'NO', 'Yes')
)
print("Original dataframe:")
print(exam_data)
print("Extrace 3rd and 5th rows with 1st and 3rd columns ;")
result = exam_data[c(3,5),c(1,3)]
print(result)