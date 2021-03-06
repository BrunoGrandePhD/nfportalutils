% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_publication.R
\name{add_publication}
\alias{add_publication}
\title{Add a publication to the publication table.}
\usage{
add_publication(
  publication_table_id,
  email_address,
  doi,
  is_preprint = F,
  preprint_server = NULL,
  study_name,
  study_id,
  funding_agency,
  disease_focus,
  manifestation,
  dry_run = T
)
}
\arguments{
\item{publication_table_id}{The synapse id of the portal publication table. Must have write access.}

\item{email_address}{A valid email address. Is used to request metadata from the Unpaywall API.}

\item{doi}{The DOI of the preprint to be added.}

\item{is_preprint}{Default = FALSE. Set to TRUE if DOI is from a preprint.}

\item{preprint_server}{Provide preprint server name. Must be one of 'bioRxiv', 'medRxiv', 'chemRxiv', 'arXiv'}

\item{study_name}{The name(s) of the study that are associated with the publication.}

\item{study_id}{The synapse id(s) of the study that are associated with the publication.}

\item{funding_agency}{The funding agency(s) that are associated with the publication.}

\item{disease_focus}{The disease focus(s) that are associated with the publication.}

\item{manifestation}{The manifestation(s) that are associated with the publication.}

\item{dry_run}{Default = TRUE. Skips upload to table and instead prints formatted publication metadata.}
}
\value{
If dry_run == T, returns publication metadata to be added.
}
\description{
Add a publication to the publication table. Publication must be in unpaywall database to retrieve info.
}
\examples{
add_publication(publication_table_id = 'syn16857542',
              doi = '10.1074/jbc.RA120.014960',
               study_name = c(toJSON("Synodos NF2")),
               study_id = c(toJSON("syn2343195")),
               funding_agency = c(toJSON("CTF")),
               disease_focus = c(toJSON("Neurofibromatosis 2")),
               manifestation = c(toJSON("Meningioma")),
               dry_run = T)
}
