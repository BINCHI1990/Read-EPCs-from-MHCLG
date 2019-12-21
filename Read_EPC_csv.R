# ------------------------------------------------
# Read_EPC_csv.R
# ------------------------------------------------
# Code provided as is and can be used or modified freely. 
# ------------------------------------------------
# Author: BIN CHI
# UCL Centre for Advanced Spatial Analysis
# bin.chi.16@ucl.ac.uk
# Date: 14/11/2019

setwd("D:/EPC")
#Domestic EPCs: to 31 August 2019
x1 <- list.files(path = ".", pattern = NULL, all.files = FALSE,
                 full.names = FALSE, recursive = FALSE)

folder <- paste("D:/EPC",x1,"certificates.csv",sep="/")


library(data.table)
myfiles = data.table::rbindlist(lapply(folder, data.table::fread, showProgress = FALSE))
dim(myfiles)
#18575357 
#myfiles[!duplicated(myfiles), ]
# no duplicated records
setDF(myfiles)

