#setClass("NetResponseModel", representation(
#    moves = "matrix", 
#    last.grouping = "list", subnets = "list", 
#    params = "list", 
#    datamatrix = "matrix", network = "graphNEL", models = "list")
#)
setClass("WMSLayer", representation(name = "character",
                                    group = "character",
                                    layer = "character"))

setClass("WMS", representation(base.url = "character",
                               data = "XMLNode",
                               layers = "list"))

setMethod("initialize", "WMS", function(.Object, base.url) {
  
  # TODO: how does one check if arguments are provided?
  # TODO: how to check if response is valid?
  # TODO: which subset of GetCapabilities response should be mapped to the 
  #       object?
  
  wms.data <- GetCapabilities(base.url)
  
  .Object@base.url <- base.url
  .Object
})
