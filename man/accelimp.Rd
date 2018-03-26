\name{accelimp}
\alias{accelimp}
\docType{data}
\title{
Accelerometer Data Example with Imputations
}
\description{
Imputed Data example from 2003-4 National Health and Nutrition Examination Survey dataset. This data example includes 184 individuals to give 1288 daily profiles, as a result of \code{accel.impute()}. 
}
\usage{data(accelimp)}
\format{
List with multiple matrix objects. \code{accelimp} includes a single dataset a result of \code{accel.impute(..., m=1,...)}. You may produce multiple datasets by setting m=5 (default).
\itemize{ 	
\item \code{accelimp$imp1}: matrix
\item[]{...}
\item \code{accelimp$imp5}: matrix
} %itemize
} %format
\references{
[1] Lee JA, Gill J (2016). Missing value imputation for physical activity data measured by accelerometer.  Statistical Methods in Medical Research.
}
\seealso{
	\code{\link{accel.impute}}
}
\examples{
data(accelimp)
ls(accelimp)
}
\keyword{datasets}
