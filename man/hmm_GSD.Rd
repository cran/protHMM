% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GSD.R
\name{hmm_GSD}
\alias{hmm_GSD}
\title{hmm_GSD}
\usage{
hmm_GSD(hmm)
}
\arguments{
\item{hmm}{The name of a profile hidden markov model file.}
}
\value{
A vector of length 300.
}
\description{
This feature initially creates a grouping matrix \eqn{G} by assigning each position a number \eqn{1:3} based on
the value at each position of HMM matrix \eqn{H}; \eqn{1} represents the low probability group, \eqn{2} the medium and \eqn{3} the high probability group.
The number of total points in each group for each column is then calculated, and the sequence is then split
based upon the the positions of the 1st, 25th, 50th, 75th and 100th percentile (last) points for each of the three groups,
in each of the 20 columns of the grouping matrix. Thus for column \eqn{j}, \eqn{S(k, j, z) = \sum_{i = 1}^{(z)*.25*N} |G[i, j] = k|},
where \eqn{k} is the group number, \eqn{z = 1:4} and \eqn{N} corresponds to number of rows in matrix \eqn{G}.
}
\examples{
h<- hmm_GSD(system.file("extdata", "1DLHA2-7", package="protHMM"))
}
\references{
Jin, D., & Zhu, P. (2021).
Protein Subcellular Localization Based on Evolutionary Information and Segmented Distribution.
Mathematical Problems in Engineering, 2021, 1–14.
}
