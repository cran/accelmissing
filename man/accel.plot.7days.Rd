\name{accel.plot.7days}
\alias{accel.plot.7days}
\title{
Daily Activity Plot
}
\description{
Displays an individual's physical activity pattern of a day during one week.
}
\usage{
accel.plot.7days(PA, label, flag, time.range = c("00:00", "23:59"),  
mark.missing = 0, axis.time = TRUE, save.plot = FALSE,  
directory.plot = getwd() )
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
  \item{time.range}{
Define the time range for display. Default is midnight to midnight, which is coded by \code{time.range = c("00:00", "23:59")}. 
}
  \item{save.plot}{
If \code{TRUE}, pdf files are saved in your current directory or designated directory. Default is \code{FALSE}.
}
  \item{mark.missing}{
If \code{mark.missing = 0} (default), the nonwearing time is marked by 0 while the wearing time is marked by 1 in flag matrix. If \code{mark.missing = 1}, it is the opposite.
}
  \item{axis.time}{
If TRUE, the x-axis displays the clock times, 8:00, 8:01, 8:02, etc. If FALSE, displays the time index by minute,  481, 482, 483, etc.
}
  \item{directory.plot}{
Directory to save the plots when save.plot=TRUE. If no input, plots are saved to your current directory.
}
}
\value{
Plot of activity counts with smoothing curve and missing flag.
}
\references{
[1] Lee JA, Gill J (2016). Missing value imputation for physical activity data measured by accelerometer.	Statistical Methods in Medical Research. \cr
[2] Ramsay, J. O., Wickham, H., Graves, S., and Hooker, G. (2014). fda: Functional Data Analysis. R package version 2.4.3.
}
\author{
Jung Ae Lee <jungaeleeb@gmail.com>
}
\examples{
data(acceldata2) ; data=acceldata2 # read data before imputation	
data(accelimp) # read data after imputation
	
# plot 7 days before imputation 
accel.plot.7days(PA=data$PA[1:7, ], label=data$label[1:7, ], flag=data$flag[1:7, ],
 time.range=c("09:00", "20:59"), save.plot=FALSE)

# plot 7 days after imputation
accel.plot.7days(PA=accelimp[[1]][1:7, ], label=data$label[1:7, ], flag=data$flag[1:7, ], 
time.range=c("09:00", "20:59"), save.plot=FALSE)
	
# save the plot
# setwd("yourfolder")  #--- set the directory to save plot when save.plot=TRUE
# accel.plot.7days(PA=accelimp[[1]], label=data$label, flag=data$flag, 
# time.range=c("09:00", "20:59"),  save.plot=TRUE)
}
\keyword{ accelerometer }
\keyword{ accelmissing }% __ONLY ONE__ keyword per line
