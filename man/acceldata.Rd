\name{acceldata}
\alias{acceldata}
\docType{data}
\title{
Accelerometer Data Example
}
\description{
Data example from 2003-4 National Health and Nutrition Examination Survey dataset. The dataset is available at the website: http://wwwn.cdc.gov/nchs/nhanes/search/nhanes03_04.aspx. This data example only includes 218 individuals, which gives 1526 daily profiles, from 7176 total participants in the physical activity survey.
}
\usage{data(acceldata)}
\format{
List with four matrix objects: 	
\itemize{
\item \code{acceldata$PA}: matrix
\item \code{acceldata$label}: matrix
\item \code{acceldata$flag}: matrix
\item \code{acceldata$demo}: matrix
}
}
\details{
\describe{	
  \item{PA}{
an N by T matrix including activity counts, where N is the total number of daily profiles, and T is the total minutes of a day (N=1526, T=1440).
}
  \item{label}{
an N by 2 matrix including the labels corresponding to \code{PA} matrix. The first column, \code{label[,1]}, includes the person id, and the second column, \code{label[,2]}, includes the day label of 1 to 7, indicating Sunday to Saturday.
}
  \item{flag}{
an N by T matrix with the values of either 1 or 0 which indicating wearing or missing. This matrix can be created from \code{create.flag()}. 
}
  \item{demo}{
an n by p matrix (or dataframe) where n is the total number of subject (n=218). The first column must include the unique person id, which equals to \code{unique(label[,1])}. From the second column to p-th column, one may include the demographic variables of intrest, for example, age, sex, body mass index, and race. These variables will be used as covariates in the imputation model.
}  % item
}  % describe
}  % detail
\note{
This data format is strongly recommended for proceeding the missing value imputation from this package.
}
\source{
http://wwwn.cdc.gov/nchs/nhanes/search/nhanes03_04.aspx
}
\references{
[1] Lee JA, Gill J (2016). Missing value imputation for physical activity data measured by accelerometer.  Statistical Methods in Medical Research.
}
\examples{
data(acceldata)
ls(acceldata)
dim(acceldata$PA)
}
\keyword{datasets}
