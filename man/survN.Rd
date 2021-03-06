% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CENSUR.R
\name{survN}
\alias{survN}
\title{estimate survival curve from censuses spaced N years apart}
\usage{
survN(pop1, pop2, interval)
}
\arguments{
\item{pop1}{numeric vector population counts of census 1}

\item{pop2}{numeric vector population counts of census 2}

\item{interval}{a numeric value, annualized intercensal period.}
}
\value{
lx numeric vector of surivorship (radix 1)
}
\description{
This simple function reproduces calculations through column H of \code{CENSUR~2.XLS} 
by Griff Feeney. We have censuses spaced an arbitrary N years apart and population counts for 
both censuses in 5-year age groups.
}
\details{
We assume the open age group has already been trimmed off. No checking done here at all. 
The time interval N must be measured as a decimal in advance
and specified. This method uses a synthetic approximation of person-years lived in each age interval
over the intercensal period and then a second approximation based on age-specific growth rates to 
produce an estimate of lifetable px. This value of px is not bounded to [0,1], and therefore the 
resulting lx approximation is not strictly positive or monotonically non-increasing, 
so downstream usage of this result is limited. For example, you wouldn't want to use it in the 
standard way to derive the lifetable dx.
}
\examples{
# 1960 vs 1970 pops
pop1 <- c(3831870,4502304,5397061,4630775,4193184,4114704,3770907,3274822,
		2744786,2559755,2160716,1839025,1494043,1133409,870238,577972,313781)
pop2 <- c(4292503,3988292,3852101,4492096,5347327,4571868,4190340,4085338,
		3674127,3198934,2648360,2382691,1970485,1584699,1172155,736258,408191)
interval <- 10
survN(pop1,pop2,interval)
}
