\name{valid.subjects}
\alias{valid.subjects}
\title{
Include or Exclude Subjects by Criteria
}
\description{
Select the subjects that have at least 3 complete days (or other criteria). By such criteria, some complete days are dropped if one has only one or two completed days, although some incomplete days are included if the subject has already three or more complete days.
}
\usage{
valid.subjects(data1, data2, valid.days = 3, valid.week.days = NA, 
valid.weekend.days = NA, mark.missing = 0, keep.7days=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data1}{
A list with three data matrix objects, \code{PA}, \code{label}, and \code{flag}, from the initial dataset before any filtering. Check these objects by typing \code{ls(data1)}.
}
  \item{data2}{
A list with three data matrix objects,  \code{PA}, \code{label}, and \code{flag}, from the output of \code{valid.days()}. Check these objects by typing \code{ls(data2)}.
}
  \item{valid.days}{
Minimum number of complete days that the subject should have. \code{valid.days=3} is default. 
}
  \item{valid.week.days}{
Minimum number of complete weekdays that the subject should have. 
}
  \item{valid.weekend.days}{
Minimum number of complete weekend days that the subject should have. 
}
  \item{mark.missing}{
If \code{mark.missing = 0} (default), the nonwearing time is marked by 0 while the wearing time is marked by 1 in flag matrix. If \code{mark.missing = 1}, it is the opposite.
}
\item{keep.7days}{
If \code{keep.7days = TRUE} (default), include all 7 days for a valid subject although some days are incomplete. If \code{FALSE}, the dataset only includes valid days of valid subjects.
}

} % argument
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
\code{\link{valid.days}}
}
\examples{
data(acceldata); attach(acceldata) # read original data
	
# filtering data for valid days
valid.days.out = valid.days(PA, label, flag, wear.hr=8,  time.range=c("09:00","20:59"))
ls(valid.days.out)

# filtering data for valid subjects
x1 = list(PA=PA, label=label, flag=flag) # original data
x2 = valid.days.out                                     # output of valid.days()
valid.sub.out = valid.subjects(data1=x1, data2=x2, valid.days=3)
ls(valid.sub.out)	
}
\keyword{ accelerometer }
\keyword{ accelmissing }% __ONLY ONE__ keyword per line
