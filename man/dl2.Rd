% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dl2.R
\name{dl2}
\alias{dl2}
\title{DL2 Function}
\usage{
dl2(
  x,
  polarity = NULL,
  qualitative = NULL,
  alpha = 0.05,
  iterations = 20,
  tau = 0.9,
  prop_split = 0.8,
  degrees
)
}
\arguments{
\item{x}{A numeric matrix or data frame which provides the data set with all the study variables.}

\item{polarity}{A numeric vector that provides all the positions of the variables that are positively correlated with the latent variable (index).}

\item{qualitative}{A numeric vector which provides the position of qualitative variables.}

\item{alpha}{Significance level of the Kendall correlation coefficient test. Default is 0.05.}

\item{iterations}{Maximum number of iterations to calculate the index. Default is 20.}

\item{tau}{A numeric value in the interval from 0.9 to 1 to compare two consecutive composite indicators. Default is 0.9.}

\item{prop_split}{Proportion data to compute the weights (corresponding to the variable importance) of index. Default is 0.8.}

\item{degrees}{Polynomial degrees to compute the weights (corresponding to the variable importance) of index.}
}
\value{
Return the a matrix with the variance inflation factor and a boolean variable if there is multicollinearity
}
\description{
This function computes a weighted composite indicator using machine learning techniques to build a distance. This method take the P2 Distance method of Pena Trapero as a starting point and improve its limitations.
}
\examples{

"Example 1"
data(NUTS2)
C <- NUTS2[,4:11]
polarity <- c(5,6,7,8)
dl2(C, polarity = polarity, alpha = 0.05,
iterations = 20,tau = 0.9,prop_split = 0.8,degrees = 1:2 )

"Example 2"
library("mlbench")
data(BostonHousing)
qualitative <- c(4,9)
matriz <- as.data.frame(BostonHousing)
matriz$rad <- as.factor(matriz$rad)
polarity <- c(1,2,5,7,9)
dim(BostonHousing)
dl2(matriz,polarity = polarity,qualitative = qualitative,0.05,10,0.9,0.8,1:3)

}
\references{
Jiménez-Fernández, E., Sánchez, A., & Ortega-Pérez, M. (2022). Dealing with weighting scheme in composite indicators: an unsupervised distance-machine learning proposal for quantitative data. Socio-Economic Planning Sciences, 83, 101339.
}
\seealso{
Fabio
}
\author{
Eduardo Jiménez: \email{edjimfer@ugr.es}
Angeles Sánchez: \email{sancheza@ugr.es}
}
