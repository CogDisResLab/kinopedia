% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/global_analysis.R
\name{global_analysis}
\alias{global_analysis}
\title{global_analysis}
\usage{
global_analysis(model, data, comparisons, threshold)
}
\arguments{
\item{model}{;data_modeled from KRSA}

\item{data}{;data_pw_100 from KRSA}

\item{comparisons}{;list of all possible comparisons from the run}

\item{threshold}{;user-defined LFC threshold}
}
\value{
a global heatmap
}
\description{
Aggregates the peptides from all group comparisons at the specified LFC threshold into a
single vector, then makes a heatmap
}
\examples{
TRUE
}
\seealso{
Other processing functions: 
\code{\link{cov_preprocess_kin}()},
\code{\link{export_data}()},
\code{\link{generate_total_df_kin}()},
\code{\link{get_LFC}()},
\code{\link{get_counts_kin}()},
\code{\link{global_heatmap}()},
\code{\link{group_compare}()},
\code{\link{make_cov_plot_kin}()},
\code{\link{mega_filter}()},
\code{\link{nonlinear_filter}()}
}
\concept{processing functions}