% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{postprocess}
\alias{postprocess}
\title{Wrapper calling either rtf_postprocess or html_postprocess}
\usage{
postprocess(postprocess_settings)
}
\arguments{
\item{postprocess_settings}{a list with:
\itemize{
\item file_format (either "rtf" or "html")
\item report_version, which is then translated to relevant postprocessing options at lower level
}}
}
\description{
Wrapper calling either rtf_postprocess or html_postprocess
}
