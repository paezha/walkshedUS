#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL

#' A mock dataset
#'
#' A data frame with mock data. The variables are as follows:
#'
#' @format A data frame 3 rows and 2 variables:
#' \describe{
#'   \item{ID}{unique identifier}
#'   \item{size}{size in arbitrary units}
#' }
#'
#' @source Made up data
"mock_data"

#############
# WALKSHEDS #
#############

#' Fifteen-minute walksheds for census tracts in Atlanta
#'
#' A simple features dataframe with unique identifiers that link to the census tracts
#' and a geometry column with the polygon or multipolygon that defines the 15-minute
#' walkshade for each census tract.:
#'
#' @format A simple features dataframe with X rows and 2 variables:
#' \describe{
#'   \item{GEOID}{unique identifier for the census tract}
#'   \item{geometry}{geometry of the polygon or multipolygon}
#' }
#'
#' @source Isochrones calculated using package {r5r} ...(what parameters were used in the routing?)
#' @docType data
#' @keywords datasets
#' @name Atlanta_walksheds
#' @usage data(Atlanta_walksheds)
#' @examples
#'  data(Atlanta_walksheds)
"Atlanta_walksheds"


##############
#   TRACTS   #
##############
