% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_LFC.R
\name{get_LFC}
\alias{get_LFC}
\title{get_LFC}
\usage{
get_LFC(data, groups, peps)
}
\arguments{
\item{data}{;the 'scaled' dataframe from the KRSA model file}

\item{groups}{;user-defined groups}

\item{peps}{;peptide list}
}
\value{
LFC table (dataframe)
}
\description{
Generates a LFC table
}
\examples{
TRUE
}
\seealso{
Other processing functions: 
\code{\link{export_data}()},
\code{\link{global_analysis}()},
\code{\link{group_compare}()},
\code{\link{mega_filter}()},
\code{\link{nonlinear_filter}()}
}
\concept{processing functions}
