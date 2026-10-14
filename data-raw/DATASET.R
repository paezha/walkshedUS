## code to prepare `DATASET` dataset goes here

mock_data <- data.frame(ID = c("01", "02", "03"),
                        size = c(45, 34, 22))

usethis::use_data(mock_data, overwrite = TRUE)
