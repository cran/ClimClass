% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as.datcli.R
\name{as.datcli}
\alias{as.datcli}
\title{as.datcli}
\usage{
as.datcli(
  df,
  station,
  MonthField = "month",
  PrecField = "P",
  MinTempField = "Tn",
  MaxTempField = "Tx",
  MeanTempField = "Tm",
  AbsMinTempField = "AbsTn",
  AbsMinTempOffset = 4,
  StationField = "station"
)
}
\arguments{
\item{df}{data frame or list}

\item{station}{name}

\item{MonthField}{character string for month field in \code{df}. Default is \code{"month"}.}

\item{PrecField}{character string for Mean Precipitation field in \code{df}. Default is \code{"P"}.}

\item{MinTempField}{character string  for Mean Daily Minimum Temperature field in \code{df}. Default is \code{"Tn"}.}

\item{MaxTempField}{character string  for Mean Daily Maximum Temperature field in \code{df}. Default is \code{"Tx"}.}

\item{MeanTempField}{character string for Mean Daily Maximum Temperature field in \code{df}. Default is \code{"Tm"}.}

\item{AbsMinTempField}{character string for Absolute Monthly Minimum Temperature field in \code{df}. Default is \code{"AbsTn"}.}

\item{AbsMinTempOffset}{estimated offset between Average Min Temperature and  Absolute Min Temperature.}

\item{StationField}{character string for Station  field in \code{df}. Default is \code{"station"}.}
}
\description{
Tranforms a data frame (see example dataset) into a data frame format like  '\code{datcli}' in '\code{climatol}' package
}
\examples{

### Not Run!! 
# Install 'climatol' from 'https://www.climatol.eu/' first
### Then load the package, uncomment and run the following line
# library(climatol)
	library(stringr)
 data(Trent_climate)

 TrentinoClimateDf <- do.call(rbind,clima_81_10)
 names <- rownames(TrentinoClimateDf)
 TrentinoClimateDf$station <- 
 unlist(lapply(X=str_split(names,pattern="[.]"),FUN=function(x) {x[1]}))
 

 station <- "T0129"
datcli <- as.datcli(TrentinoClimateDf,station=station)

### Not Run!! 
# Install 'climatol' from 'https://www.climatol.eu/' first
### Then load the package, uncomment and run the following line
# diagwl(datcli,est=station,alt=100,per="Period",mlab="en") ## plots a Walter-Lieth's climograph

}
\seealso{
\url{https://www.climatol.eu}
}
\author{
Emanuele Cordano
}
