## @knitr demo_reset
rm(list=ls(all=TRUE))

## @knitr demo_libraries

suppressMessages(library(FactoMineR))
source("../src/3DPlotFunctionsFactoMiner.r")
suppressWarnings(suppressMessages(library(knitr)))

## @knitr demo_webgl_hook

knit_hooks$set(webgl = hook_webgl)

## @knitr demo_data

df <- read.table('data.csv', header=TRUE, sep=';',dec=',',row.names=1)
df

res<-PCA(df, scale.unit=TRUE, ncp=5, graph = FALSE)

## @knitr demo_BIPlot

rgl.viewpoint(zoom=.5)
PCABIPlot3D(res)

## @knitr demo_IndPlot
rgl.viewpoint(zoom=.5)
VarPCAPlot3D(res)

## @knitr demo_CorPlot
rgl.viewpoint(zoom=.5)
CorPCAPlot3D(res)