\name{acceldata2}
\alias{acceldata2}
\docType{data}
\title{
Accelerometer Data Example 2
}
\description{
Data example from 2003-4 National Health and Nutrition Examination Survey dataset. This data example includes 184 individuals to give 1288 daily profiles. This only includes valid subjects that have at least three complete days, a subset of \code{acceldata} as a result of \code{valid.subjects()}. 
}
\usage{data(acceldata2)}
\format{
List with four matrix objects: 	
\itemize{
\item \code{acceldata2$PA}: matrix
\item \code{acceldata2$label}: matrix
\item \code{acceldata2$flag}: matrix
\item \code{acceldata2$demo}: matrix
}
}
\details{
\describe{
  \item{PA}{
an N by T matrix including activity counts, where N is the total number of daily profiles, and T is the total minutes of a day (N=1288, T=1440).
}
  \item{label}{
an N by 2 matrix including the labels corresponding to \code{PA} matrix. The first column, \code{label[,1]}, includes the person id, and the second column, \code{label[,2]}, includes the day label of 1 to 7, indicating Sunday to Saturday.
}
  \item{flag}{
an N by T matrix with the values of either 1 or 0 which indicating wearing or missing. This matrix can be created from \code{create.flag()}. 
} 
  \item{demo}{
an n by p matrix (or dataframe) where n is the total number of subject (n=184). The first column must include the unique person id, which equals to \code{unique(label[,1])}. From the second column to p-th column, one may include the demographic variables of intrest, for example, age, sex, body mass index, and race. These variables will be used as covariates in the imputation model.
}  % item
} % describe
} % details
\source{
http://wwwn.cdc.gov/nchs/nhanes/search/nhanes03_04.aspx
}
\references{
[1] Lee JA, Gill J (2016). Missing value imputation for physical activity data measured by accelerometer.  Statistical Methods in Medical Research.
}
\seealso{
	\code{acceldata}, \code{valid.subjects}
}
\examples{
data(acceldata2)
ls(acceldata2)
}
\keyword{datasets}
