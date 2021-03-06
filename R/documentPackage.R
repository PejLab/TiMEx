#' @title The main usages of TiMEx
#' 
#' 
#' @description The main usages of TiMEx, a package for finding groups of mutually 
#' exclusive alterations in large cancer datasets.
#'
#'
#' @section Overview:
#'The most important function in this package is \code{\link{TiMEx}}, which 
#'identifies all mutually exclusive groups in a binary dataset. TiMEx is a 
#'procedure implementing three steps: first, all pairs in the input dataset 
#'are tested for mutual exclusivity. Second, maximal cliques are identified 
#'on the basis of a selected number of pairs. Third, the resulting cliques 
#'are tested for mutual exclusivity. Additional inputs to \code{\link{TiMEx}} 
#'include thresholds on the significance and intensity of mutually
#'exclusive pairs (\code{pairMu} and \code{pairPvalue}) and q-value cutoff 
#'on mutually exclusive groups (\code{groupPvalue}). Unless otherwise 
#'specified, \code{\link{TiMEx}} will use default values of these inputs. 
#'
#'Alternatively, the three steps of the TiMEx procedure can be run separately
#'via the three functions \code{\link{analyzePairs}},
#'\code{\link{doMaxCliques}}, and \code{\link{findSignifCliques}} 
#'(in this order).
#'
#'
#'@section Preprocessing and postprocessing:
#'This package also provides functions to preprocess the input data
#'(\code{\link{doMetagene}}, \code{\link{removeLowFreqs}}), as well as to 
#'postprocess the identified mutually exclusive groups 
#'(\code{\link{produceTablesSignifGroups}}, 
#'\code{\link{subsampleAnalysis}}, \code{\link{plotGroupByName}}, 
#'\code{\link{recoverAllNamesGroups}}). 
#'
#'
#' @section Datasets:
#' Multiple datasets are available within this package. 
#' \code{\link{breast}} and \code{\link{ovarian}} are datasets 
#' downloaded from cBioPortal (TCGA) in July 2014, and preprocessed as 
#' described in Constantinescu \emph{et. al}: \emph{TiMEx: A Waiting Time 
#' Model for Mutually Exclusive Cancer Alterations}. Bioinformatics (2015). 
#' \code{\link{gbmDendrix}} is a glioblastoma dataset used in
#' Leiserson \emph{et. al}: \emph{Simultaneous identification of multiple 
#' driver pathways in cancer}. Plos Computational Biology (2013). Additionally, 
#' this package also includes the dataset \code{\link{gbmMuex}}, used and 
#' preprocessed as described in Szczurek \emph{et. al}: \emph{Modeling mutual 
#' exclusivity of cancer mutations}. Research in Computational Molecular 
#' Biology (2014).
#' 
#' For each of these four datasets, the identified significantly mutually
#' exclusive groups are available as separate datasets 
#' (\code{\link{breastOutput}}, \code{\link{ovarianOutput}}, 
#' \code{\link{gbmDendrixOutput}}, and \code{\link{gbmMuexOutput}}). Similarly,
#' results of a subsampling analysis ran with 100 repetitions on the 
#' identified groups are available as separate datasets 
#' (\code{\link{breastSubsampling}}, \code{\link{ovarianSubsampling}},
#' \code{\link{gbmDendrixSubsampling}}, and \code{\link{gbmMuexSubsampling}}). 
#' 
#' For breast cancer and ovarian cancer, the metagroups of genes in the 
#' original datasets (produced with the function \code{\link{doMetagene}}) are
#' available as separate datasets (\code{\link{breastGroups}} and 
#' \code{\link{ovarianGroups}}). 
#' 
#' Finally, the binary input matrices 
#' corresponding to the four breast cancer subtypes LuminalA, LuminalB,
#' Her2, and Basal are available in the dataset 
#' \code{\link{breastSubtypes}}, and the significantly mutually exclusive 
#' groups identified in each of these four subtypes are available in the
#' dataset \code{\link{breastSubtypesOutput}}.
#' 
#' 
#'@section Simulations:
#'Datasets can be generated from the TiMEx model using the function 
#'\code{\link{simulateGenes}}.
#'
#'
#'@section More:
#'For more in-depth explanations of the TiMEx package and model, including 
#'examples, please see the corresponding paper below.
#'
#'
#' @references Constantinescu \emph{et al.}: \emph{TiMEx: A Waiting Time Model 
#' for Mutually Exclusive Cancer Alterations}. Bioinformatics (2015)
#' @docType package
#' 
#' @name TiMEx-package
#' 
#' @aliases TiMEx-package
NULL
