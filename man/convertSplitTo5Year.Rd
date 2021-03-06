% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{convertSplitTo5Year}
\alias{convertSplitTo5Year}
\title{aggregates split 0 & 1-4 age groups into a single 5 year age group}
\usage{
convertSplitTo5Year(Value)
}
\arguments{
\item{Value}{numeric vector of population age groups that includes 0, 1-4, and 5 year ages.}
}
\description{
Creates a five year age group from split 0 & 1-4 year age groups.
}
\details{
Sums 0 & 1-4 age groups and outputs new 5 year age group vector.
}
\examples{
MalePop <- seq(1,100)
convertSplitTo5Year(MalePop)
}
