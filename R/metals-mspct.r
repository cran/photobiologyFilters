#' Spectral reflectance of metals
#'
#' Total reflectance of metals at 294 K (21 C), measured using an integrating
#' sphere. Data are to be used as "reference values only" as actual values will
#' depend on the state of the metal surface and its polish.
#'
#' @docType data
#' @keywords datasets
#' @format A \code{reflector_mspct} object named \code{metals.mspct} containing
#'   a collection of \code{reflector_spct} objects each with 47 rows and 2
#'   variables.
#'
#' The variables for each spectrum are as follows:
#' \itemize{
#'   \item \code{w.length} (nm)
#'   \item \code{Rfr} (fraction)
#' }
#'   These member objects contain metadata stored as R attributes. Accessors to
#'   the metadata are available: \code{what_measured()}, \code{how_measured()},
#'   \code{when_measured()}, and \code{comment()}.
#'
#' @note Data extracted from a published report by OCR.
#'
#' @references
#' Ernie W. Spisz, Albert J. Weigund, Robert L. Bowmun, and John R. Juck (1969)
#' SOLAR ABSORPTANCES AND SPECTRAL REFLECTANCES OF 12 METALS FOR TEMPERATURES RANGING FROM 300 TO 500 K
#' NASA TN D-5353, Technical Note, Washington DC, 22 pp. (Data from Table II (a))
#'
#' @examples
#' metals.mspct$gold
#' summary(metals.mspct$gold)
#'
#' what_measured(metals.mspct$gold)
#' how_measured(metals.mspct$gold)
#' cat(comment(metals.mspct$gold))
#'
#' names(metals.mspct)
#' summary(metals.mspct)
#'
"metals.mspct"
