#'@export
ignore_items = c(".Rhistory", ".Rproj.*", "*.o", "*.so")

#'Make a gitignore file
#'@description A function to write a .gitignore file with common ignore items
#'@details To see the vector of default things added to .gitignore, call voovarb:::ignore_items
#'@author Myfanwy Johnston
#'@author Matt Espe
#'@export

write_gitignore = function(ignore = ignore_items,
                           file = ".gitignore",
                          add = file.exists(file)) {
  if(add)
       ignore = setdiff(ignore, readLines(file))

   cat(ignore, file = file , sep = "\n", append = add)

}
