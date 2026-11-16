#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL

#############
# WALKSHEDS #
#############

#' Fifteen-minute walksheds for census tracts in Atlanta
#'
#' A simple features dataframe with unique identifiers that link to the census tracts,
#' and a geometry column with the polygon or multipolygon that defines the 15-minute
#' walkshed for each census tract. The geometry is in lat-long (crs: 4326).
#'
#' @format A simple features dataframe with X rows and 2 variables:
#' \describe{
#'   \item{GEOID}{unique identifier for the census tract}
#'   \item{geometry}{geometry of the polygon or multipolygon}
#' }
#'
#' @source Isochrones calculated using package {r5r} using a walk speed of
#' 3.6 kph for 15 minutes.
#' @docType data
#' @keywords datasets
#' @name Atlanta_walksheds
#' @usage data(Atlanta_walksheds)
#' @source Routing on the walksheds used data from OpenStreetMaps
#' @examples
#'  data(Atlanta_walksheds)
"Atlanta_walksheds"


##############
#   TRACTS   #
##############
