#'@title Return the path to a template of current NML files
#'
#'@description
#'Currently in GOTM 5.4.0 the model can be run with yaml or nml files (old version). This returns a path to a directory with example NML and YAML files for running GOTM.
#'
#'@keywords methods
#'
#'@author
#'Tadhg Moore
#'@examples
#'\dontrun{
#' template_files()
#'}
#'
#'@export
template_files <- function(){
  return(system.file('extdata/', package=packageName()))
}
