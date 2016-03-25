\name{wear.time.plot}
\alias{wear.time.plot}
\title{
Proportion of Wearing over Time 
}
\description{
Displays the proportion of wearing over time among the daily profiles. 
}
\usage{
wear.time.plot(PA, label, flag, mark.missing = 0)
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
  \item{mark.missing}{
If \code{mark.missing = 0} (default), the nonwearing time is marked by 0 while the wearing time is marked by 1 in flag matrix. If \code{mark.missing = 1}, it is the opposite.
}
}
\value{
Plot with the proportion of wearing in y-axis and the time index in x-axis, also displaying the standard measurement day.
}
\references{
[1] Lee JA, Gill J (2016). Missing value imputation for physical activity data measured by accelerometer. Statistical Methods in Medical Research.	\cr
[2] Catellier, D. J., Hannan, P. J., Murray, D. M., Addy, C. L., Conway, T. L., Yang, S., and Rice, J. C. (2005). Imputation of missing data when measuring physical activity by accelerometry. Medicine and Science in Sports and Exercise, 37(11 Suppl).
}
\author{
Jung Ae Lee <jungaeleeb@gmail.com>
}
\note{
By looking at the plot, we may decide the standard measurement day, which is the time range that exhibits the sufficiently large portion of wearing (60 or 70 percent). 
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{missing.rate}}
}
\examples{
data(acceldata) # read data
ls(acceldata)     # list with four data matrix objects, PA, label, flag, and demo
attach(acceldata)

# plot the proportion of wearing over time
wear.time.plot(PA, label, flag)	
}
\keyword{ accelerometer }
\keyword{ accelmissing}% __ONLY ONE__ keyword per line
