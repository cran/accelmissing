\name{mice.impute.2l.zipln.pmm}
\alias{mice.impute.2l.zipln.pmm}
\title{
Imputation by PMM under ZIPLN model.
}
\description{
Imputes univariate missing data using the predictive mean matching (PMM) under the zero-inflated Poisson Log-normal (ZIPLN) model.
}
\usage{
mice.impute.2l.zipln.pmm(y, ry, x, wy=NULL, type, K, zs = zs, D)
}
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
  \item{wy}{
defalut wy=NULL
}
  \item{type}{
If \code{type=1}, covariates are included in both logit and poisson models. \cr
If \code{type=2}, covariates are included only in poisson part. \cr
If \code{type=3}, covariates are included only in logit part. 
}
  \item{K}{
The number of the lag and lead variables. \code{K=3} is default.
}
  \item{zs}{
Matrix (N by 2K+1) with the elements of log(yhat)-log(lambda) (See Lee and Gill, 2016)
}
  \item{D}{
The number of donors to be drawn by predictive mean matching. \code{D=5} is default.
}
}
\value{
A vector of length \code{nmis} with imputations
}
\references{
[1] Lee JA, Gill J (2016). Missing value imputation for physical activity data measured by accelerometer.	Statistical Methods in Medical Research.\cr
[2] van Buuren S, Groothuis-Oudshoorn K (2011). mice: Multivariate imputations by chained equations in R. Journal of Statistical Software. \cr
[3] Kleinke K, Reinecke J (2013). Multiple imputation of incomplete zero-infated count data. Statistica Neerlandica.
}
\author{
Jung Ae Lee <jungaeleeb@gmail.com>
}
\note{
This function runs by the argument in \code{mice(..., method="2l.zipln.pmm",...)}
}
\seealso{
\code{\link{mice}}, \code{\link{mice.impute.2l.zip.pmm}}, \code{\link{mice.impute.2l.zipln}}
}
\keyword{ mice }
\keyword{ predictive mean matching }% __ONLY ONE__ keyword per line
