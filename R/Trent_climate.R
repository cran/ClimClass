 #' Data set of Trentino climate
#'
#' A group of datasets used consistently throughout the ClimClass manual and examples. 
#' It is used as reference definition of the climate for the Trentino region, Italy. 
#' It includes monthly series of temperature and precipitation, and reference tables for 
#' the definition of aridity and continentality/oceanicity
#' 
#' Series like "Txxxx" were supplied by the Autonomous Province of Trento - Meteotrentino (I). 
#' Series like "FEMxx" were supplied by Fondazione Edmund Mach, San Michele all'Adige (I). 
#' 
#' @docType data
#' @keywords datasets
#' @name Trent_climate
#' @usage data(Trent_climate)
NULL
#' Dataset of meteorological measures
#' 
#' A list of 28 data frames (one for each station of the meteorological network), with 
#' monthly time series of precipitation and temperature (minimum and maximum).
#' 
#' @docType data
#' @keywords datasets
#' @name lista_cli
#' @usage data(Trent_climate)
#' @format List of 28 elements, each is a data frame of 5 variables and 636 observations
NULL
#' Precipitation
#' 
#' The daily data frame of precipitation for a number of stations. It is used in function  
#' \code{\link{oiv_ind}}
#' 
#' @docType data
#' @keywords datasets
#' @name P
#' @usage data(Trent_climate)
#' @format Data frame: 19358 obervations of 39 variables (stations)
NULL
#' Mean daily temperature
#' 
#' The daily data frame of mean daily temperature for a number of stations, used in function 
#'  \code{\link{oiv_ind}}
#'  
#'  
#' @docType data
#' @keywords datasets
#' @name Tm
#' @usage data(Trent_climate)
#' @format Data frame: 19358 obervations of 15 variables (stations)
NULL
#' Minimum daily temperature
#' 
#' The daily data frame of minimum daily temperature for a number of stations, used in function 
#'  \code{\link{oiv_ind}}
#'  
#'  
#' @docType data
#' @keywords datasets
#' @name Tn
#' @usage data(Trent_climate)
#' @format Data frame: 19358 obervations of 15 variables (stations)
NULL
#' Maximum daily temperature
#' 
#' The daily data frame of maximum daily temperature for a number of stations, used in function 
#'  \code{\link{oiv_ind}}
#'  
#'  
#' @docType data
#' @keywords datasets
#' @name Tx
#' @usage data(Trent_climate)
#' @format Data frame: 19358 obervations of 15 variables (stations)
NULL
#' Water balance
#' 
#' Is the first list (\code{W_balance}) in \code{thornt_lst} organized according to stations. 
#' See Examples in function \code{\link{thornthwaite}} for its construction.
#'  
#' @docType data
#' @keywords datasets
#' @name W_balance
#' @usage data(Trent_climate)
#' @format List of 28 elements, each is a data frame of 5 variables and 636 observations
NULL
#' Aridity index
#' 
#' Used for reference in aridity indices assessment (see function \code{\link{arid}} and 
#' references for data sources).
#'  
#' @docType data
#' @keywords datasets
#' @name arid_ind_tables
#' @usage data(Trent_climate)
#' @format  List formed by six data frames. 
NULL
#' Climatic normals of precipitation and temperatures
#' 
#' Climatic normals of precipitation and temperature (minimum, maximum, and mean) for the 
#' climatic period 1981 - 2010. It has been calculated by function \code{\link{climate}}.
#'  
#' @docType data
#' @keywords datasets
#' @name clima_81_10
#' @usage data(Trent_climate)
#' @format  A list (one table for each station) of 28 monthly climatic normals
NULL
#' Radiative energy coefficients
#' 
#' "Radiative energy coefficients" for Hargreaves' equation, corresponding to the 
#' daily extra-atmospheric solar radiation energy. It is the output of function 
#' \code{\link{ExAtRa}}.
#'  
#' @docType data
#' @keywords datasets
#' @name coeff_rad
#' @usage data(Trent_climate)
#' @format  An array of 12 numerics
NULL
#' Continentality/oceanicity indices
#' 
#' Used for reference in continentality/oceanicity indices assessment (see function 
#' \code{\link{contin}} and references for data sources).
#'  
#' @docType data
#' @keywords datasets
#' @name continental_ind_tables
#' @usage data(Trent_climate)
#' @format  List of 4 data frames
NULL
#' Geographical position for each meteorological station
#' 
#' Coordinates and elevation for each station in the data set. Coordinates are geographical 
#' and elevation is measured in meters above mean sea level.
#' 
#' @docType data
#' @keywords datasets
#' @name coord_elev
#' @usage data(Trent_climate)
#' @format  Data frame of 40 observations of 4 variables
NULL
#' Monthly quantiles of the meteorological variables
#' 
#' The second list (\code{quantiles}) in \code{thornt_lst} organized according to stations. 
#' See Examples in function \code{\link{thornthwaite}} for its construction.
#' 
#' @docType data
#' @keywords datasets
#' @name quantiles
#' @usage data(Trent_climate)
#' @format  Data frame of 28 observations of 4 variables
NULL
#' Input for the Thornthwaite function
#' 
#' For every station, the first element (a list, \code{Thornth._W._bal}) reports the monthly 
#' series of water balance quantities for the station, each in one data frame (see function 
#' \code{\link{thornthwaite}} for details). The second list (\code{quantiles}) reports the 
#' monthly quantiles for the same quantities.
#' 
#' @docType data
#' @keywords datasets
#' @name thornt_lst
#' @usage data(Trent_climate)
#' @format S3 object: a "hyperlist" (list of lists of lists), one list of lists for each station
NULL
