% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CHMM.R
\name{chmm}
\alias{chmm}
\title{chmm}
\usage{
chmm(hmm)
}
\arguments{
\item{hmm}{The name of a profile hidden markov model file.}
}
\value{
A fusion vector of length 800.

A LAG vector of length 400.

A Bigrams vector of length 400.
}
\description{
This feature begins by creating a CHMM, which is created by constructing 4 matrices, \eqn{A, B, C, D} from
the original HMM \eqn{H}. \eqn{A} contains the first 75 percent of the original matrix \eqn{H} row-wise, \eqn{B} the
last 75 percent, \eqn{C} the middle 75 percent and \eqn{D} the entire original matrix. These are then merged to create the new
CHMM \eqn{Z}. From there, the Bigrams feature is calculated with a flattened 20 x 20 matrix \eqn{B}, in which \eqn{B[i, j] = \sum_{a = 1}^{L-1} Z_{a, i} \times Z_{a+1, j}}.
\eqn{H} corresponds to the original HMM matrix, and \eqn{L} is the number of rows in \eqn{Z}. Local Average Group,
or LAG is then calculated by splitting up the CHMM into 20 groups along the length of the protein sequence and calculating
the sums of each of the columns of each group, making a 1 x 20 vector per group, and a length 20 x 20 vector for all groups. These features are then fused.
}
\examples{
h<- chmm(system.file("extdata", "1DLHA2-7", package="protHMM"))

}
\references{
An, J., Zhou, Y., Zhao, Y., & Yan, Z. (2019).
An Efficient Feature Extraction Technique Based on Local Coding PSSM and Multifeatures Fusion for Predicting Protein-Protein Interactions.
Evolutionary Bioinformatics, 15, 117693431987992.
}
