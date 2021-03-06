% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find-short.R
\name{recog_pick}
\alias{recog_pick}
\title{Find first fingerprint match for a given source}
\usage{
recog_pick(recog_db, source, protocols = ".*", matches = NULL)
}
\arguments{
\item{recog_db}{a structure created with \code{\link[=load_fingerprints]{load_fingerprints()}} or
\code{\link[=use_builtin_fingerprints]{use_builtin_fingerprints()}}}

\item{source}{the 1-element character vector to compare against}

\item{protocol, matches}{regexs to limit what you're comparing against. These
are boolean \strong{OR'd} together}
}
\description{
Unlike the full search sibling, this function will only return
the first match found. It does this in \code{preference_value} order
but is not guaranteed to find the best match, only the first one
(for speed).
}
\examples{
recog_db <- use_builtin_fingerprints()
recog_pick(recog_db, "VShell_Special_Edition_2_5_0_204 VShell", "ssh")
}
