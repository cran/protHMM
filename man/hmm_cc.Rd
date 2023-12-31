% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CC.R
\name{hmm_cc}
\alias{hmm_cc}
\title{hmm_cc}
\usage{
hmm_cc(hmm, lg = 4)
}
\arguments{
\item{hmm}{The name of a profile hidden markov model file.}

\item{lg}{The lag value, which indicates the distance between residues.}
}
\value{
A vector of length 20 x 19 x the lag value; by default this is a vector of length 1520.
}
\description{
The feature calculates the covariance between different residues separated along the protein sequences
by a lag value across different amino acid emission frequency columns.
}
\note{
The lag value must less than the length of the amino acid sequence.
}
\examples{
h<- hmm_cc(system.file("extdata", "1DLHA2-7", package="protHMM"))

}
\references{
Dong, Q., Zhou, S., & Guan, J. (2009).
A new taxonomy-based protein fold recognition approach based on autocross-covariance transformation.
Bioinformatics, 25(20), 2655–2662.
}
