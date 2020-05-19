
#'@export
#'
write_utils = function() {
    cat("#--------------------------------------------#
# M. Johnston
# Wed Apr 15 11:03:02 2020 ------------------------------
# This script contains utility/convenience functions for analysis
#--------------------------------------------#

## ht == headtail
#--------------------------------------------#
ht <- function(d, n=6) {

  rbind(head(d, n), tail(d, n))

}

# typing shortcuts
#--------------------------------------------#
len <- function(x){length(unique(x))}
csn <- function(x){colSums(is.na(x))}
rsn <- function(x){rowSums(is.na(x))}",

  file = "R/utils.R", sep = "\n"
  )

}

