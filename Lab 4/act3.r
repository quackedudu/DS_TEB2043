Array1 <- array(1:24, dim = c(2, 4, 3))

print("Array1")
print(Array1)

Array2 <- array(25:54, dim = c(3, 2, 5))
print("Array2")
print(Array2)

print("The second row of the second matrix of the array:")
print(Array1[2, , 2])

print("The element in the 3rd row and 3rd column of the 1st matrix:")
print(Array2[3, 2, 1])