## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(protHMM)

## ----example------------------------------------------------------------------
library(protHMM)
## basic example code
h_MB<- hmm_MB(system.file("extdata", "1DLHA2-7", package="protHMM"))
h_MA<- hmm_MA(system.file("extdata", "1DLHA2-7", package="protHMM"))
h_GA<- hmm_GA(system.file("extdata", "1DLHA2-7", package="protHMM"))
head(h_MB, 20)
head(h_MA, 20)
head(h_GA, 20)

## -----------------------------------------------------------------------------
library(protHMM)
## basic example code
h_AC<- hmm_ac(system.file("extdata", "1DLHA2-7", package="protHMM"))
h_CC<- hmm_cc(system.file("extdata", "1DLHA2-7", package="protHMM"))
head(h_AC, 20)
head(h_CC, 20)

## -----------------------------------------------------------------------------
library(protHMM)
## basic example code
h_tri<- hmm_trigrams(system.file("extdata", "1DLHA2-7", package="protHMM"))
h_bi<- hmm_bigrams(system.file("extdata", "1DLHA2-7", package="protHMM"))
head(h_tri, 20)
head(h_bi, 20)

## -----------------------------------------------------------------------------
library(protHMM)
h_fused<- chmm(system.file("extdata", "1DLHA2-7", package="protHMM"))[[1]]
h_lag<- chmm(system.file("extdata", "1DLHA2-7", package="protHMM"))[[2]]
h_bigrams<- chmm(system.file("extdata", "1DLHA2-7", package="protHMM"))[[3]]
head(h_fused, 20)
head(h_lag, 20)
head(h_bigrams, 20)

## -----------------------------------------------------------------------------
library(protHMM)
# basic example code
h<- hmm_distance(system.file("extdata", "1DLHA2-7", package="protHMM"), system.file("extdata", "1TEN-7", 
                                                                                      package="protHMM"))
h

## -----------------------------------------------------------------------------
library(protHMM)
# basic example code
h<- fp_hmm(system.file("extdata", "1DLHA2-7", package="protHMM"))
h[[1]]
head(h[[2]], 20)

## -----------------------------------------------------------------------------
library(protHMM)
# basic example code
h<- hmm_GSD(system.file("extdata", "1DLHA2-7", package="protHMM"))
h[1:40]

## -----------------------------------------------------------------------------
library(protHMM)
## basic example code
h<- hmm_LBP(system.file("extdata", "1TEN-7", package="protHMM"))
h[1:20]

## -----------------------------------------------------------------------------
library(protHMM)
## basic example code
h<- hmm_LPC(system.file("extdata", "1TEN-7", package="protHMM"))
h[1:20]

## -----------------------------------------------------------------------------
library(protHMM)
## basic example code
h<- hmm_SCSH(system.file("extdata", "1TEN-7", package="protHMM"))
## 2-mers
h[[1]][1:20]
## 3-mers: specific indexes as most of the vector is 0
h[[2]][313:333]

## -----------------------------------------------------------------------------
library(protHMM)
## basic example code
h<- hmm_SepDim(system.file("extdata", "1DLHA2-7", package="protHMM"))
h[1:40]

## -----------------------------------------------------------------------------
library(protHMM)
## basic example code
h<- hmm_Single_Average(system.file("extdata", "1DLHA2-7", package="protHMM"))
h[1:40]

## -----------------------------------------------------------------------------
library(protHMM)
## basic example code
h<- hmm_smooth(system.file("extdata", "1DLHA2-7", package="protHMM"))
h[1,]

## -----------------------------------------------------------------------------
library(protHMM)
# basic example code
h<- hmm_svd(system.file("extdata", "1DLHA2-7", package="protHMM"))
h

## -----------------------------------------------------------------------------
library(protHMM)
## basic example code
h<- hmm_read(system.file("extdata", "1DLHA2-7", package="protHMM"))
h[1,]

