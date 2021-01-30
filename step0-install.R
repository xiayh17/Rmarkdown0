##
### ---------------
###
### Create: Jianming Zeng
### Date: 2018-12-20 15:43:52
### Email: jmzeng1314@163.com
### Blog: http://www.bio-info-trainee.com/
### Forum:  http://www.biotrainee.com/thread-1376-1-1.html
### CAFS/SUSTC/Eli Lilly/University of Macau
### Update Log: 2018-12-20  First version
### Update Log: 2019-09-10 基于R version 3.5.1 (2018-07-02)
### ---------------


rm(list = ls())
options()$repos
options()$BioC_mirror
options(BioC_mirror="https://mirrors.ustc.edu.cn/bioc/")
options("repos" = c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))
options()$repos
options()$BioC_mirror

## Bioconductor packages
# https://bioconductor.org/packages/release/bioc/html/GEOquery.html
if (!requireNamespace("BiocManager", quietly = TRUE))
  {install.packages("BiocManager")}
if(!require("KEGG.db")) BiocManager::install("KEGG.db",ask = F,update = F)
if(!require("GSEABase")) BiocManager::install("GSEABase",ask = F,update = F)
if(!require("GSVA")) BiocManager::install("GSVA",ask = F,update = F)
if(!require("clusterProfiler")) BiocManager::install("clusterProfiler",ask = F,update = F)
if(!require("GEOquery")) BiocManager::install("GEOquery",ask = F,update = F)
if(!require("limma")) BiocManager::install("limma",ask = F,update = F)
if(!require("impute")) BiocManager::install("impute",ask = F,update = F)
if(!require("genefu")) BiocManager::install("genefu",ask = F,update = F)
if(!require("org.Hs.eg.db")) BiocManager::install("org.Hs.eg.db",ask = F,update = F)
if(!require("hugene10sttranscriptcluster.db")) BiocManager::install("hugene10sttranscriptcluster.db",ask = F,update = F)

## CRAN packages
if(!require("WGCNA")) install.packages('WGCNA')
if(!require("FactoMineR")) install.packages('FactoMineR')
if(!require("factoextra")) install.packages('factoextra')
if(!require("ggplot2")) install.packages('ggplot2')
if(!require("pheatmap")) install.packages('pheatmap')
if(!require("ggpubr")) install.packages('ggpubr')



## Github Packages
if(!require("AnnoProbe")) remotes::install_github("jmzeng1314/AnnoProbe")

## library packages
library(FactoMineR)
library(factoextra)
library(GSEABase)
library(GSVA)
library(clusterProfiler)
library(genefu)
library(ggplot2)
library(ggpubr)
library(hugene10sttranscriptcluster.db)
library(limma)
library(org.Hs.eg.db)
library(pheatmap)
library(AnnoProbe)
