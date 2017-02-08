% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/patLanRGB.R
\name{patLanRGB}
\alias{patLanRGB}
\title{Color pattern quantification using landmarks and RGB color extraction.}
\usage{
patLanRGB(imageList, landmarkList, RGB, resampleFactor = 1, colOffset = 0,
  crop = FALSE, cropOffset = NULL, res = 300,
  transformRef = "meanshape", transformType = "tps", adjustCoords = FALSE,
  plot = FALSE)
}
\arguments{
\item{imageList}{List of RasterStack objects.}

\item{RGB}{RGB values for color pattern extraction specified as vector.}

\item{resampleFactor}{Integer for downsampling used by \code{\link{redRes}}.}

\item{colOffset}{Color offset for color pattern extraction (default = 0).}

\item{crop}{Whether to use the landmarks range to crop the image. This can significantly speed up the analysis (default = FALSE).}

\item{cropOffset}{Vector c(xmin, xmax, ymin, ymax) that specifies the number of pixels you want the cropping to be offset from the landmarks (in case the landmarks do not surround the entire color pattern).}

\item{res}{Resolution for color pattern raster (default = 300). This should be reduced if the number of pixels in the image is lower than th raster.}

\item{transformRef}{ID of reference sample for shape to which color patterns will be transformed to. Can be 'meanshape' for transforming to mean shape of Procrustes analysis.}

\item{transformType}{(default ='tps')}

\item{adjustCoords}{Adjust coordinates.}

\item{plot}{Whether to plot transformed color patterns while processing (default = FALSE).}

\item{lanArray}{Landmark array.}
}
\value{
List of raster objects.
}
\description{
Color pattern quantification using landmarks and RGB color extraction.
}
\examples{
IDlist <- c('BC0077','BC0071','BC0050','BC0049','BC0004')
prepath <- system.file("extdata",  package = 'patternize')
extension <- '_landmarks_LFW.txt'
landmarkList <- makeList(IDlist, 'landmark', prepath, extension)

extension <- '.jpg'
imageList <- makeList(IDlist, 'image', prepath, extension)

RGB <- c(114,17,0)
rasterList_lanRGB <- patLanRGB(imageList, landmarkList, RGB, resampleFactor = 3, colOffset = 0.15, crop = TRUE, res = 150, adjustCoords = TRUE, plot = TRUE)

}
