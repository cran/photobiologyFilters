#' @title Refractive-index spectra for materials
#'
#' @description A collection of refractive-index spectra for some materials.
#'
#' @details The \code{"generic_mspct"} object contains \code{"generic_spct"}
#'   objects with refractive index data.
#'
#'   The variables in each member spectrum are as follows: \itemize{ \item
#'   w.length (nm) \item n \item k }
#'
#' @note Data labeled "for unrestricted use" originate from the Filmmetrics
#'    Refractive Index Database at
#'    \url{https://www.filmetrics.com/refractive-index-database} where
#'    primary sources are provided. The names in \code{refractive_index.mspct}
#'    are the same as in the downloaded files, except for the `.txt` tag.
#'
#' @docType data
#' @keywords datasets
#' @format A \code{"generic_mspct"} object containing multiple
#'   \code{"generic_spct"} objects.
#'
#' @examples
#' length(refractive_index.mspct)
#' names(refractive_index.mspct)
#' refractive_index.mspct$Acrylic
#' refractive_index.mspct[["Acrylic"]]
#'
#' # Compute spectral reflectance for an interface between acrylic and air
#' # incidence angle of colimated light 60 degrees.
#' Rfr_from_n(angle_deg = 60, n = refractive_index.mspct[["Acrylic"]])
#'
"refractive_index.mspct"
