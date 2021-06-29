#Install/load packages
if (!require("rmarkdown")) {install.packages("rmarkdown")}
if (!require("pacman")) {install.packages("pacman")}#install relevant packages
pacman::p_load(rmarkdown,readxl,haven,Hmisc,foreign,lattice,janitor,dplyr,rstudioapi,stringr)
project<-substr(rstudioapi::getActiveProject(),max(as.data.frame(stringr::str_locate_all(rstudioapi::getActiveProject(),"/"))$start)+1,nchar(rstudioapi::getActiveProject()))
program_name<-substr(rstudioapi::getSourceEditorContext()$path,max(as.data.frame(stringr::str_locate_all(rstudioapi::getSourceEditorContext()$path,"/"))$start)+1,max(as.data.frame(stringr::str_locate_all(rstudioapi::getSourceEditorContext()$path,".Rmd"))$start)-1)
location<-dirname(rstudioapi::getSourceEditorContext()$path)
dir<-getwd()
setwd(dir)
save(project, program_name, location, file = "meta.RData")
