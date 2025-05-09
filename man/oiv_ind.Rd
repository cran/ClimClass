% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oiv_ind.R
\name{oiv_ind}
\alias{oiv_ind}
\title{OIV bioclimatic indices for viticulture}
\usage{
oiv_ind(
  daily_Tn = NULL,
  daily_Tx = NULL,
  daily_Tm = NULL,
  daily_P = NULL,
  first.yr = NULL,
  last.yr = NULL,
  subs_missing = TRUE,
  coeff_HI = 1.04,
  quant_Tn_rest = 0.5,
  quant_Tn_veg = 0.5,
  quant_Tx_veg = 0.5,
  indices = 1:10
)
}
\arguments{
\item{daily_Tn}{series of daily minimum temperature (data frame). Must include the following columns (and names): "year", "month", "day" and one or more station id(s), each column one Tn series.}

\item{daily_Tx}{series of daily maximum temperature (data frame). Must include the following columns (and names): "year", "month", "day" and one or more station id(s), each column one Tx series.}

\item{daily_Tm}{series of daily mean temperature (data frame). Must include the following columns (and names): "year", "month", "day" and one or more station id(s), each column one Tm series.}

\item{daily_P}{series of daily precipitation (data frame). Must include the following columns (and names): "year", "month", "day" and one or more station id(s), each column one P series.}

\item{first.yr}{first year of the period over which indices are calculated}

\item{last.yr}{last year of the period over which indices are calculated}

\item{subs_missing}{logical: if \code{TRUE} (default), missing values in input series are replaced by corresponding average values for each day in the series.}

\item{coeff_HI}{Huglin's daylength correction, as long as the number of stations, or a single coeffient; in this case it is recycled on all stations. See details.}

\item{quant_Tn_rest}{quantile (0..1) for the choice of the position of the representative year in the series, referred to the minimum temperature during "rest" period. Default is 0.5 (median)}

\item{quant_Tn_veg}{quantile (0..1) for the choice of the position of the representative year in the series, referred to the minimum temperature during the "vegetative" period. Default is 0.5 (median)}

\item{quant_Tx_veg}{quantile (0..1) for the choice of the position of the representative year in the series, referred to the maximum temperature during the "vegetative" period. Default is 0.5 (median)}

\item{indices}{set of OIV indices to be listed. Default is all indices (1 to 10). See details for numbered list of indices.}
}
\value{
A table (one line per station) reporting OIV bioclimatic indices. The Branas' index is added.
}
\description{
Calculation of OIV bio-climatic indices for viticulture (ref.: http://www.oiv.int/oiv/info/enresolution2012?lang=en).
}
\details{
General info about OIV indices can be sought at http://www.oiv.int/oiv/info/enresolution2012?lang=en.
In general, if \code{first.yr} or \code{last.yr} are NULL (default), the lowest and highest values in series are taken as begin and end of calculation period.
A coherence check is done on input of start / end years.

If any input is missing, corresponding indices are not be calculated. If \code{daily_Tm} is missing and both \code{daily_Tn} and  \code{daily_Tx} are passed to the function,
 \code{daily_Tm} is calculated as the mean of  \code{daily_Tn} and  \code{daily_Tx}.

OIV indices are the following:

\code{Tm_veg}: 1 - mean temperature during vegetation period. The latter is April - October (N emisphere) or October - April (S emisphere). The case (N or S) is automatically recognised by temperature data.

\code{WI}: 2 - Winkler index (degree days with a 10 C base, summation over vegetative period), see note on \code{Tm_veg}. Ref: Amerine and Winkler, 1944.

\code{BEDD}: 3 - biologically active degree days. Degree days with a lower threhold of 10 C and an upper threshold at 19 C. Ref: Gladstone, 2004.

\code{HI}: 4 - heliothermic Huglin index. A degree day summation of the average between  mean and maximum temperature above 10 C, corrected by a coefficient of daylength duration.
The coefficient is given by the author in a table according to latitude. If one value is given, it is used for all stations. Default is 1.04 (lat. 44-46). Ref.: Huglin, P., 1978

\code{CNI}: 5 - cool night index. Mean of September (N emisphere) or March (S emisphere) minimum temperatures. Ref.: Tonietto and Carbonneau, 2004.

\code{FSI}: 6 - Fregoni's simplified index. Given by the product between the summation of thermal range (Tx - Tn) and the number of days with Tm > 10 C, for 30 days before ripening.
The period before ripening is taken as September (N emisphere) or March (S emisphere). Ref.: Fregoni et Pezzutto, 2000.

\code{BI}: 7 - Branas' hydrothermic index. The only index not included in OIV list, used for fungine infection proneness. 
It is given by the product of precipitation (mm) by the mean temperature (C) during the period April - October (N emisphere) or October - April (S emisphere). Ref: Eynard and Dal Masso, 1990.

\code{Tn_rest}: 8 - minimum temperature during rest period. Useful for assessing winter severity. The rest period is November - March (N emisphere) or May - September (S emisphere). 
The case (N or S) is automatically recognised by temperature data.

\code{Tn_veg}: 9 - minimum temperature during vegetative period. Useful for assessing spring frosts. See note on \code{Tm_veg} for periods.

\code{Tx_veg}: 10 - maximum temperature during vegetative period. Useful for assessing summer hot spells. See note on \code{Tm_veg} for periods.

\code{quant_Tn_rest}, \code{quant_Tn_veg}, \code{quant_Tx_veg} define the statistical rank of the year to be chosen as representative for assessing \code{Tn_rest},
\code{Tn_veg}, and \code{Tx_veg}, respectfully. 0.5 (default) is the median year, 0 is the minimum (lowest temperature), 1 is the maximum (highest temperature).
 
The only missing index among those selected by OIV is Riou's Drought Index, which is calculated by function \code{RDI} on monthly series.
}
\examples{
data(Trent_climate)
oiv_ind(daily_Tn=Tn,daily_Tx=Tx, daily_P=P, first.yr=1981, last.yr=2010, subs_missing=FALSE)

}
\references{
Amerine, M.A., and Winkler, A.J., 1944. Composition and quality of musts and wines of California grapes. Hilgardia. 15(6): 493-673.

Eccel, E.,  Zollo, A.L.,  Mercogliano, P., Zorer, R., 2016: Simulations of quantitative shift in bio-climatic indices in the viticultural areas of Trentino (Italian Alps) by an open source R package. Computers and Electronics in Agriculture 127 (2016) 92-100.

Eynard, I. e Dal Masso, G., 1990: Viticoltura moderna. Manuale pratico. Hoepli Milano. 778 pp.

Fregoni, C., et  Pezzutto, S., 2000 : Principes et premieres approches de l'indice bioclimatique de qualite Fregoni, Progr.Agric.Vitic. 117: 390-396.

Gladstones, J.S., 2004: Climate and Australian Viticulture. In 'Viticulture. Volume 1-Resources'. (Eds Dry PR, Coombe BG) pp. 90-118.

Huglin, M.P., 1978: Nouveau mode d'evaluation des possibilites heliothermiques d'un milieu viticole. Comptes Rendus de l'Academie de l'Agriculture de France. 64: 1117-1126.

Tonietto, J., and Carbonneau, A., 2004. A multicriteria climatic classification system for grape-growing regions worldwide. Agricultural and Forest Meteorology. 124(1/2): 81-97.
}
\seealso{
\code{\link{RDI}}
}
\author{
Emanuele Eccel
}
