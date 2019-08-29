#Flowjo Plugins Activation

#FLOW AI
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()

BiocManager::install("flowAI")

#Phenograph
if(!require(devtools)) {
  install.packages("devtools")
}
library("devtools")
devtools::install_github("JinmiaoChenLab/Rphenograph")

