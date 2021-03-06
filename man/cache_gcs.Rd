% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cache_gcs.R
\name{cache_gcs}
\alias{cache_gcs}
\title{Google Cloud Storage Cache
Google Cloud Storage backed cache, for remote caching.}
\usage{
cache_gcs(cache_name = googleCloudStorageR::gcs_get_global_bucket(),
  algo = "sha512")
}
\arguments{
\item{cache_name}{Bucket name for storing cache files.}

\item{algo}{The hashing algorithm used for the cache, see
\code{\link[digest]{digest}} for available algorithms.}
}
\description{
Google Cloud Storage Cache
Google Cloud Storage backed cache, for remote caching.
}
\examples{

\dontrun{
library(googleCloudStorageR)
# Set GCS credentials.
Sys.setenv("GCS_AUTH_FILE"="<google-service-json>",
           "GCS_DEFAULT_BUCKET"="unique-bucket-name")

gcs <- cache_gcs("unique-bucket-name")
mem_runif <- memoise(runif, cache = gcs)
}


}
