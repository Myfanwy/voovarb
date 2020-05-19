
#'@export
#'
write_utils = function() {
    cat(paste("#--------------------------------------------#
# M. Johnston \n",
              "# Utility/convenience functions for analysis \n",
              "# ",
              weekdays(as.POSIXct(Sys.time())),
              " ",
              Sys.time(),
              " ----------------# \n", sep =""),

  paste0("\n

# quickly 'vet' a dataframe by previewing rows at the head, middle, and tail:
#-------------------------------------------------------#
vet <- function(d, n = 4L) {
 if(class(d) != 'data.frame') stop('vet() can only vet dataframes')
 left <- as.integer(nrow(d) / 2 - n / 2)
 torso = d[seq_len(n) + left - 1L,]
rbind(head(d, n), torso, tail(d, n))
}


# typing shortcuts
#--------------------------------------------#
len <- function(x){length(unique(x))}
csn <- function(x){colSums(is.na(x))}
rsn <- function(x){rowSums(is.na(x))}"),

  file = ifelse(!file.exists("R/utils.R"), "R/utils.R", stop("'R/utils.R' script already exists")),
  sep = "\n"
  )

}

