\name{mice.impute.2l.zipln}
\alias{mice.impute.2l.zipln}
\title{
Imputation by Bayesian ZIPLN model.
}
\description{
Imputes univariate missing data using Bayesian model under the zero-inflated Poisson Log-normal (ZIPLN) distribution.
}
\usage{
mice.impute.2l.zipln(y, ry, x, type, K, zs = zs)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
Incomplete data vector of length n
}
  \item{ry}{
Vector of missing data pattern (\code{FALSE}=missing, \code{TRUE}=observed)
}
  \item{x}{
Matrix (n by p) of complete covariates
}
  \item{type}{
If \code{type=1}, covariates are included in both logit and poisson. \cr
If \code{type=2}, covariates are included only in poisson part. \cr
If \code{type=3}, covariates are included only in logit part.
}
  \item{K}{
The number of the lag and lead variables. \code{K=3} is default.
}
  \item{zs}{
Matrix (N by 2K+1) with the elements of log(yhat)-log(lambda) (See Lee and Gill, 2016)
}
}
\value{
A vector of length \code{nmis} with imputations
}
\references{
[1] Lee JA, Gill J (2016). Missing value imputation for physical activity data measured by accelerometer.	Statistical Methods in Medical Research. \cr
[2] van Buuren S, Groothuis-Oudshoorn K (2011). mice: Multivariate imputations by chained equations in R. Journal of Statistical Software. \cr
[3] Kleinke K, Reinecke J (2013). Multiple imputation of incomplete zero-infated count data. Statistica Neerlandica.
}
\author{
Jung Ae Lee <jungaeleeb@gmail.com>
}
\note{
This function runs by the argument in \code{mice(..., method="2l.zipln",...)}.
}
\seealso{
\code{\link{mice}}, \code{\link{mice.impute.2l.zipln}}
}
\keyword{ mice }
\keyword{ zero-inflated poisson lognormal }% __ONLY ONE__ keyword per line
