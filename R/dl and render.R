
library(quarto)

## With temporary folder
dir <- tempdir()
file <- paste0(dir, "/template.qmd")

download.file(
  url = "https://drive.google.com/file/d/15bfCKLnImRfOVQJi6CYbt39IaXAsuDFU",
  destfile = file
)

quarto::quarto_render(file)


## With project

dir <- "data"
dir.create(dir, showWarnings = F)
file <- paste0(dir, "/template.qmd")

url <- "https://drive.google.com/file/d/15bfCKLnImRfOVQJi6CYbt39IaXAsuDFU"
url_test <- "https://drive.google.com/uc?authuser=0&id=15bfCKLnImRfOVQJi6CYbt39IaXAsuDFU&export=download"

download.file(
  url = url_test,
  destfile = "template.qmd"
)

quarto::quarto_render(file)

