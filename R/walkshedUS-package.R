#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL

##############
# MSA BBOXES #
##############

#' Bounding box coordinates and polygons for metropolitan statistical areas
#'
#' A simple features dataframe with city names connected to their bounding box coordinate values
#' and polygons of the bounding boxes. The geometry is in lat-long (crs: 4326).
#'
#' @format A simple features dataframe with 41 rows and 6 variables:
#' \describe{
#'   \item{city}{city name}
#'   \item{xmin}{the xmin (lower-left corner) coordinate of the bounding box}
#'   \item{ymin}{the ymin (lower-left corner) coordinate of the bounding box}
#'   \item{xmax}{the xmax (upper-right corner) coordinate of the bounding box}
#'   \item{ymax}{the ymax (upper-right corner) coordinate of the bounding box}
#'   \item{geometry}{geometry of the bounding box as a polygon}
#' }
#'
#' @source Calculated and generated bounding box coordinates and polygons
#' @docType data
#' @keywords datasets
#' @name msa_bboxes
#' @usage data(msa_bboxes)
#' @examples
#'  data(msa_bboxes)
"msa_bboxes"


#############
# WALKSHEDS #
#############

#' Fifteen-minute walksheds for census tracts in Atlanta GA
#'
#' @description
#' A simple features dataframe with unique identifiers that link to the census tracts,
#' and a geometry column with the polygon or multipolygon that defines the 15-minute
#' walkshed for each census tract. The geometry is in lat-long (crs: 4326).
#'
#' @format An object of class sf (inherits from data.frame) with 1485 rows and 2 columns.
#' \describe{
#'   \item{GEOID}{unique identifier for the census tract}
#'   \item{geometry}{geometry of the walkshed as a multipolygon}
#' }
#'
#' @source Isochrones calculated using package \code{r5r} using a walk speed of
#' 3.6 kph for 15 minutes and OpenStreetMaps street network
#' @docType data
#' @keywords datasets
#' @name Atlanta_walksheds
#' @usage data(Atlanta_walksheds)
#' @source Routing to obtain the walksheds was
#' @examples
#'  data(Atlanta_walksheds)
"Atlanta_walksheds"

#' Fifteen-minute walksheds for census tracts in Austin TX
#'
#' @inherit Atlanta_walksheds description
#' @inherit Atlanta_walksheds format
#' @seealso [Atlanta_walksheds] for variable definitions.
#' @docType data
#' @keywords datasets
#' @name Austin_walksheds
#' @usage data(Austin_walksheds)
#' @inherit Atlanta_walksheds source
#' @examples
#'  data(Austin_walksheds)
"Austin_walksheds"

#' Fifteen-minute walksheds for census tracts in Baltimore MD
#'
#' @inherit Atlanta_walksheds description
#' @inherit Atlanta_walksheds format
#' @inherit Austin_walksheds seealso
#' @docType data
#' @keywords datasets
#' @name Baltimore_walksheds
#' @usage data(Baltimore_walksheds)
#' @inherit Atlanta_walksheds source
#' @examples
#'  data(Baltimore_walksheds)
"Baltimore_walksheds"

##############
#   TRACTS   #
##############

#' Census tract information, walkshed size and demographic data for Atlanta GA
#'
#' A simple features dataframe with unique identifiers that link to the census tracts,
#' and a geometry column with the multipolygon of each census tract, demographic data from the 2020 US Census
#' (including housing counts and population counts), and RUCA values for determining tract urbanity/rurality.
#' The geometry is in lat-long (crs: 4326).
#'
#' @format An object of class sf (inherits from tbl_df, tbl, data.frame) with 1485 rows and 12 columns.
#' \describe{
#'   \item{GEOID}{unique identifier for the census tract, obtained from the 2020 US Decennial Census}
#'   \item{tract_name}{the name, number, and county location of the tract, obtained from the 2020 US Decennial Census}
#'   \item{housing_count}{the number of housing units in the census tract, obtained from the 2020 US Decennial Census}
#'   \item{primary_ruca}{the RUCA value of the census tract, between 1 (most metropolitan) and 6 (micropolitan commuting), obtained from the USDA (2020)}
#'   \item{population_count}{the total population count of the census tract, obtained from the 2020 US Decennial Census}
#'   \item{geometry}{geometry of the census tract as a multipolygon, obtained from the 2020 US Decennial Census}
#'   \item{walkshed_area}{the area of the census tract's generated walkshed in square meters}
#'   \item{household_income}{the average annual household income of residents in the census tract, obtained from the 2020 US ACS Census}
#'   \item{white_pop}{the population count of non-hispanic white residents in the census tract, obtained from the 2020 US Decennial Census}
#'   \item{black_pop}{the population count of non-hispanic black residents in the census tract, obtained from the 2020 US Decennial Census}
#'   \item{hispanic_pop}{the population count of hispanic residents in the census tract, obtained from the 2020 US Decennial Census}
#'   \item{asian_pop}{the population count of non-hispanic asian residents in the census tract, obtained from the 2020 US Decennial Census}
#' }
#'
#' @source Census tract, population count, housing count data obtained from the 2020 US Decennial Census (\url{URL})\cr
#' Annual household income for census tracts data obtained from the 2020 US ACS Census (\url{URL})\cr
#' Primary RUCA codes obtained from the USDA Economic Research Service (2020) (\url{URL})\cr
#' Walkshed areas in square meters calculated using the walkshed multipolygons
#' @docType data
#' @keywords datasets
#' @name Atlanta_tracts
#' @usage data(Atlanta_tracts)
#' @examples
#'  data(Atlanta_tracts)
"Atlanta_tracts"


#' Census tract information, walkshed size and demographic data for Austin TX
#'
#' @inherit Atlanta_tracts description
#' @inherit Atlanta_tracts format
#' @seealso [Atlanta_tracts] for variable definitions.
#' @docType data
#' @keywords datasets
#' @name Austin_tracts
#' @usage data(Austin_tracts)
#' @inherit Atlanta_tracts source
#' @examples
#'  data(Austin_tracts)
"Austin_tracts"

#' Census tract information, walkshed size and demographic data for Baltimore MD
#'
#' @inherit Atlanta_tracts description
#' @inherit Atlanta_tracts format
#' @inherit Austin_tracts seealso
#' @docType data
#' @keywords datasets
#' @name Baltimore_tracts
#' @usage data(Baltimore_tracts)
#' @inherit Atlanta_tracts source
#' @examples
#'  data(Baltimore_tracts)
"Baltimore_tracts"
