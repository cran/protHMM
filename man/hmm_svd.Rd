% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SVD.R
\name{hmm_svd}
\alias{hmm_svd}
\title{hmm_svd}
\usage{
hmm_svd(hmm)
}
\arguments{
\item{hmm}{The name of a profile hidden markov model file.}
}
\value{
A vector of length 20.
}
\description{
This feature uses singular value decomposition (SVD) to reduce the dimensionality of the inputted hidden
markov model matrix. SVD factorizes a matrix C of dimensions \eqn{i, j} to \eqn{U[i, r] \times \Sigma[r, r] \times V[r, j]}.
The diagonal values of \eqn{\Sigma} are known as the singular values of matrix C, and are what are returned with this function.
}
\examples{
h<- hmm_svd(system.file("extdata", "1DLHA2-7", package="protHMM"))

}
\references{
Song, X., Chen, Z., Sun, X., You, Z., Li, L., & Zhao, Y. (2018).
An Ensemble Classifier with Random Projection for Predicting Protein–Protein Interactions Using Sequence and Evolutionary Information.
Applied Sciences, 8(1), 89.
}
