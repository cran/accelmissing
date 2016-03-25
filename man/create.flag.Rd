\name{create.flag}
\alias{create.flag}
\title{
Create a Missing Flag Matrix
}
\description{
Defines the missing interval by detecting consecutive zeros for a while (20 minutes as a default), and create a flag matrix with the binary indicator for wearing vs. nonwearing time.
}
\usage{
create.flag(PA, window = 20, mark.missing = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{PA}{
an N by T matrix including activity counts, where N is the total number of daily profiles, and T is the total minutes of a day (T=1440).
}
  \item{window}{
Minimum minutes of missing interval. The default is 20, which means that we define the missing interval when the exact zeros continues more than 20 minutes. 30 or 60 minutes are also commonly used.
}
  \item{mark.missing}{
If \code{mark.missing = 0} (default), the nonwearing time is marked by 0 while the wearing time is marked by 1. If \code{mark.missing = 1}, it is the opposite.
}
%  \item{method}{
%Select the method for defining the missing interval. \code{method="exact"}(default) defines the missing interval only when the exact zeros sustain for a while. \code{method="nci"} and \code{method="van"} allows tolerance. The later two options are from "accelerometry" R package.}
}
\value{
an N by T matrix with the elements of 0 or 1.	
}
\references{
[1] Lee JA, Gill J (2016). Missing value imputation for physical activity data measured by accelerometer. Statistical Methods and Medical Research. \cr
[2] Catellier DJ, Hannan PJ, Murray DM, Addy CL, Conway TL, Yang S, Rice JC (2005). Imputation of missing data when measuring physical activity by accelerometry. Medicine and Science in Sports and Exercise; 37 (11 Suppl). \cr
%[3] Van Domelen DR (2014). accelerometry: Functions for Processing Minute-to-Minute Accelerometer Data. R package version 2.2.4.
}
\author{
Jung Ae Lee <jungaeleeb@gmail.com>
}
\seealso{
\code{\link{missing.rate}}, \code{\link{wear.time.plot}}.	
}
\examples{
data(acceldata)  # read data	
PA = acceldata$PA
	
# create a missing flag matrix with 60 minutes criterion 
flag60 = create.flag(PA, window=60, mark.missing=0)

# create a missing flag matrix with 30 minutes criterion
flag30 = create.flag(PA, window=30, mark.missing=0)
	
}
\keyword{ accelerometer }
\keyword{ accelmissing }
