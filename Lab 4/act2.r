V1 <- c(2,3,1,5,4,6,8,7,9)

Matrix_1 <- matrix(V1, nrow = 3, ncol = 3)
rownames(Matrix_1) <- c("R1", "R2", "R3")
colnames(Matrix_1) <- c("C1", "C2", "C3")

Matrix_1
Matrix_2 <- t(Matrix_1)

rownames(Matrix_2) <- c("R1", "R2", "R3")
colnames(Matrix_2) <- c("C1", "C2", "C3")

Matrix_2

add_result <- Matrix_1 + Matrix_2
sub_result <- Matrix_1 - Matrix_2
mul_result <- Matrix_1 * Matrix_2
div_result <- Matrix_1 / Matrix_2

add_result
sub_result
mul_result
div_result
