% File src/library/base/man/attr.Rd
% Part of the R package, https://www.R-project.org
% Copyright 1995-2025 R Core Team
% Distributed under GPL 2 or later

\name{attr}
\alias{attr}
\alias{attr<-}
\title{Object Attributes}
\description{
  Get or set specific attributes of an object.
}
\usage{
attr(x, which, exact = FALSE)
attr(x, which) <- value
}
\arguments{
  \item{x}{an object whose attributes are to be accessed.}
  \item{which}{a non-empty character string specifying which attribute
    is to be accessed.}
  \item{exact}{logical: should \code{which} be matched exactly?}
  \item{value}{an object, the new value of the attribute, or \code{NULL}
    to remove the attribute.}
}
\details{
  These functions provide access to a single attribute of an object.
  The replacement form causes the named attribute to take the value
  specified (or create a new attribute with the value given), unless
  the object is \code{\link{NULL}}, a \code{\link{symbol}} (aka \sQuote{\code{name}})
  or a \code{\link{primitive}} function.

  The extraction function first looks for an exact match to \code{which}
  amongst the attributes of \code{x}, then (unless \code{exact = TRUE})
  a unique partial match.
  (Setting \code{\link{options}(warnPartialMatchAttr = TRUE)} causes
  partial matches to give warnings.)

  The replacement function only uses exact matches.

  Note that some attributes (namely \code{\link{class}},
  \code{\link{comment}}, \code{\link{dim}}, \code{\link{dimnames}},
  \code{\link{names}}, \code{\link{row.names}} and
  \code{\link{tsp}}) are treated specially and have restrictions on
  the values which can be set.  (Note that this is not true of
  \code{\link{levels}} which should be set for factors via the
  \code{levels} replacement function.)

  The extractor function allows (and does not match) empty and missing
  values of \code{which}: the replacement function does not.

  \code{\link{NULL}} objects cannot have attributes and attempting to
  assign one by \code{attr} gives an error.

  Both are \link{primitive} functions.
}
\value{
  For the extractor, the value of the attribute matched, or \code{NULL}
  if no exact match is found and no or more than one partial match is found.
}
\references{
  Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988)
  \emph{The New S Language}.
  Wadsworth & Brooks/Cole.
}
\seealso{
  \code{\link{attributes}}
}
\examples{
# create a 2 by 5 matrix
x <- 1:10
attr(x,"dim") <- c(2, 5)

S <- sum
attr(S, "foo") <- NA   # gives a warning, will become an error!
attributes(sum) <- NULL # revert to sanity
}
\keyword{attribute}
