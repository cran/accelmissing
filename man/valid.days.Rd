\name{valid.days}
\alias{valid.days}
\title{
Select the Valid Days
}
\description{
Selects the complete (valid) days that include sufficient wearing time.
}
\usage{
valid.days(PA, label, flag, wear.hr = 10, time.range = c("09:00", "20:59"), 
mark.missing = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{PA}{
an N by T matrix including activity counts, where N is the total number of daily profiles, and T is the total minutes of a day (T=1440).
}
  \item{label}{
an N by 2 matrix including the labels corresponding to \code{PA} matrix. The first column, \code{label[,1]}, includes the person id, and the second column, \code{label[,2]}, includes the day label of 1 to 7, indicating Sunday to Saturday.
}
  \item{flag}{
an N by T matrix with the values of either 1 or 0 which indicating wearing or missing. This matrix can be created from \code{create.flag()}. 
}
  \item{wear.hr}{
Minimum wearing hours during the time range. If \code{wear.hr=10} (default), select the valid days that include more than 10 hours of wearing.
}
  \item{time.range}{
Define the time range for the standard measurment day. Default is \code{time.range
	 = c("09:00", "20:59")}.
}
  \item{mark.missing}{
If \code{mark.missing = 0} (default), the nonwearing time is marked by 0 while the wearing time is marked by 1 in flag matrix. If \code{mark.missing = 1}, it is the opposite.
}
}
\value{
List with the updated PA, label and flag matrix objects.
}
\references{
[1] Lee JA, Gill J (2016). Missing value imputation for physical activity data measured by accelerometer. Statistical Methods in Medical Research.
}
\author{
Jung Ae Lee <jungaeleeb@gmail.com>
}
\seealso{
\code{\link{valid.subjects}}
}
\examples{
data(acceldata); attach(acceldata) # read data
	
# filtering data for valid days
valid.days.out = valid.days(PA, label, flag, wear.hr=8,  time.range=c("09:00","20:59"))
ls(valid.days.out)
}
\keyword{ accelerometer }
\keyword{ accelmissing }% __ONLY ONE__ keyword per line
