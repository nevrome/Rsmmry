% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smmry_api.R
\name{smmry_api}
\alias{smmry_api}
\title{R API to access the SMMRY web service}
\usage{
smmry_api(x = NULL, quick = TRUE, isurl = NULL, length = NULL,
  keywords = NULL, quote_avoid = FALSE, breaks = FALSE)
}
\arguments{
\item{x}{string. text \bold{or} url of the webpage to 
summarize - uses data from clipboard, if x is not set}

\item{quick}{boolean. switch to decide if the result should 
be just the reduced text (default = \code{TRUE}), 
or a comprehensiv list of the API output 
(\code{FALSE})}

\item{isurl}{boolean. switch to decide if x should be treated
as text (\code{FALSE}) or url (\code{TRUE}). 
If nothing is set (default = \code{NULL}), the 
function decides autonomously}

\item{length}{integer. number of sentences returned by SMMRY, 
(default = \code{7})}

\item{keywords}{integer. number of top keywords returned by
SMMRY}

\item{quote_avoid}{boolean. switch to decide if the SMMRY
result should (default = \code{FALSE}) or 
shouldn't (\code{TRUE}) include quotations}

\item{breaks}{boolean. switch to decide if the SMMRY result
should (\code{TRUE}) or shouldn't 
(default = \code{FALSE}) contain the string 
"[BREAK]" between each sentence}
}
\description{
SMMRY offers a service to automatically summarize 
a webpage or simply text. \code{smmry_api} allows
to access this service from within R. To use it
you need a SMMRY API Key (\url{http://smmry.com/api}) 
that has to be set as a environment variable 
\code{SMMRY_PAT}.
}
\examples{
lorem_ipsum <- "Lorem ipsum dolor sit amet, consetetur 
                sadipscing elitr, sed diam nonumy eirmod 
                tempor invidunt ut labore et dolore magna 
                aliquyam erat, sed diam voluptua. At vero 
                eos et accusam et justo duo dolores et ea 
                rebum. Stet clita kasd gubergren, no sea 
                takimata sanctus est Lorem ipsum dolor sit 
                amet. Lorem ipsum dolor sit amet, consetetur 
                sadipscing elitr, sed diam nonumy eirmod 
                tempor invidunt ut labore et dolore magna 
                aliquyam erat, sed diam voluptua. At vero 
                eos et accusam et justo duo dolores et ea 
                rebum. Stet clita kasd gubergren, no sea 
                takimata sanctus est Lorem ipsum dolor sit 
                amet."

testurl <- "https://en.wikipedia.org/wiki/Aregund"

\donttest{
  smmry_api(x = lorem_ipsum)
  smmry_api(x = lorem_ipsum, quick = FALSE)
  smmry_api(x = testurl)
  smmry_api(x = testurl, quick = FALSE)
}

}
