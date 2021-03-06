% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/extremogram1.R
\name{extremogram1}
\alias{extremogram1}
\title{Sample univariate extremogram}
\usage{
extremogram1(x, quant, maxlag, type, ploting = 1, cutoff = 1, start = 0)
}
\arguments{
\item{x}{Univariate time series (a vector).}

\item{quant}{Quantile of the time series to indicate an extreme event (a number between 0 and 1).}

\item{maxlag}{Number of lags to include in the extremogram (an integer).}

\item{type}{Extremogram type. If type = 1, the upper tail extremogram is estimated.
If type = 2, the lower tail extremogram is estimated.}

\item{ploting}{An extremogram plot. If ploting = 1, a plot is created (default). If ploting = 0,
no plot is created.}

\item{cutoff}{The cutoff of the y-axis on the plot (a number between 0 and 1, default is 1).}

\item{start}{The lag that the extremogram plots starts at (an integer not greater than \code{maxlag}, default is 0).}
}
\value{
Extremogram values and a plot (if requested).
}
\description{
The function estimates the sample univariate extremogram and creates an
             extremogram plot.
}
\examples{
# generate a GARCH(1,1) process
omega  = 1
alpha  = 0.1
beta   = 0.6
n      = 1000
quant  = 0.95
type   = 1
maxlag = 70
df     = 3
G = extremogram:::garchsim(omega,alpha,beta,n,df)

extremogram1(G, quant, maxlag, type, 1, 1, 0)
}
\references{
\enumerate{
            \item Davis, R. A., Mikosch, T., & Cribben, I. (2012). Towards estimating extremal
            serial dependence via the bootstrapped extremogram. Journal of Econometrics,170(1),
            142-152.
            \item Davis, R. A., Mikosch, T., & Cribben, I. (2011). Estimating extremal
            dependence in univariate and multivariate time series via the extremogram.arXiv
            preprint arXiv:1107.5592.}
}

