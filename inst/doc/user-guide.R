## ---- echo=FALSE---------------------------------------------------------
knitr::opts_chunk$set(fig.width=8, fig.height=4)

## ------------------------------------------------------------------------
library(photobiology)
library(photobiologyWavebands)
library(photobiologyFilters)
library(ggplot2)
library(ggspectra)

## ------------------------------------------------------------------------
# band_pass

## ------------------------------------------------------------------------
schott

## ------------------------------------------------------------------------
names(filters.mspct)

## ------------------------------------------------------------------------
filters.mspct$UG11

## ------------------------------------------------------------------------
filters.mspct[["UG11"]]

## ------------------------------------------------------------------------
filters.mspct["UG11"]

## ------------------------------------------------------------------------
filters.mspct[petri_dishes]

## ------------------------------------------------------------------------
filters.mspct[grep("UG", names(filters.mspct))]

## ------------------------------------------------------------------------
filters.mspct$UG11

## ------------------------------------------------------------------------
getWhatMeasured(filters.mspct$UG11)
getWhenMeasured(filters.mspct$UG11)

## ------------------------------------------------------------------------
is_normalized(filters.mspct$UG11)

## ------------------------------------------------------------------------
comment(filters.mspct$UG11)
names(filters.mspct$UG11)

## ------------------------------------------------------------------------
getTfrType(filters.mspct$UG11)

## ------------------------------------------------------------------------
plot(filters.mspct$UG11)

## ------------------------------------------------------------------------
plot(filters.mspct$TB550_660_850, 
     annotations = c("+", "title:what"), 
     span = 11)

## ------------------------------------------------------------------------
ggplot(filters.mspct$UG11) +
  geom_line()

## ------------------------------------------------------------------------
transmittance(filters.mspct$UG11, UVA())

## ------------------------------------------------------------------------
absorbance(filters.mspct$UG11, list(UVA(), Red()))

## ------------------------------------------------------------------------
transmittance(filters.mspct[grep("UG", names(filters.mspct))], 
              list(UVB(), UVA()))

## ------------------------------------------------------------------------
head(as.data.frame(filters.mspct$UG11))

## ------------------------------------------------------------------------
attach(filters.mspct)
transmittance(UG11, UVA())
detach(filters.mspct)

## ------------------------------------------------------------------------
attach(filters.mspct)
with(UG11, range(w.length))
detach(filters.mspct)

## ------------------------------------------------------------------------
with(filters.mspct, transmittance(UG11, UVA()))
