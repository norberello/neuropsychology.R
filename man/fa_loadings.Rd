\name{fa_loadings}
\alias{fa_loadings}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Format the loadings of a factor analysis.}
\description{
Format the loadings of a factor analysis.
}
\usage{
fa_loadings(fa, 
            treshold=0, 
            round=2, 
            labels=NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fa}{An object returned by the psych::fa function.}
  \item{treshold}{Remove loadings inferior to a treshold.}
  \item{round}{Round the final loadings matrix.}
  \item{labels}{Supply a additional column with e.g. item labels}
}
\value{
list with two elements.
\item{full}{The full loadings dataframe.}
\item{max}{The max loading of each item.}
}
\author{Dominique Makowski}
\examples{
require(neuropsychology)
require(psych)

df <- select_numeric(personality)
fa <- psych::fa(df)

fa_loadings(fa)$max
}
