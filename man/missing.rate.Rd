\name{missing.rate}
\alias{missing.rate}
\title{
Computing Missing Rate
}
\description{
Computes the missing rate from acceleromater data.
}
\usage{
missing.rate(label, flag, mark.missing = 0, time.range = c("09:00", "20:59"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{label}{
an N by 2 matrix including the labels corresponding to \code{PA} matrix. The first column, \code{label[,1]}, includes the person id, and the second column, \code{label[,2]}, includes the day label of 1 to 7, indicating Sunday to Saturday.
}
  \item{flag}{
an N by T matrix with the values of either 1 or 0 which indicating wearing or missing. This matrix can be created from \code{create.flag()}.
}
  \item{mark.missing}{
If \code{mark.missing = 0} (default), the nonwearing time is marked by 0 while the wearing time is marked by 1 in flag matrix. If \code{mark.missing = 1}, it is the opposite.
}
  \item{time.range}{
Define the time range during which the missing rate is computed. Default is 9am-9pm, coded by \code{time.range = c("09:00", "20:59")}.
}
}
\value{
Numeric value of a missing rate between 0 to 1. The output is a list of 
\item{total}{total missing rate during the time range}
\item{table}{missing rate table by subject}
}
\references{
[1] Lee JA, Gill J (2016). Missing value imputation for physical activity data measured by accelerometer. Statistical Methods in Medical Research.
}
\author{
Jung Ae Lee <jungaeleeb@gmail.com>
}
\seealso{
\code{\link{create.flag}}, \code{\link{wear.time.plot}}
}
\examples{
## missing rate calculation: uncomment and run the code below
# data(acceldata); attach(acceldata)
# missing.rate(label, flag, mark.missing=0, time.range=c("09:00", "20:59"))$total  

## create missing flag by 60 min criterion
# flag60 = create.flag(PA, window=60, mark.missing=0)
# mr = missing.rate(label, flag60, mark.missing=0, time.range=c("09:00", "20:59"))
# mr$total  #28.1 percent

## missing proportion by days
# mean(mr$table < 0.1)   # 45.8 percent
}
\keyword{ accelerometer }
\keyword{ accelmissing }
