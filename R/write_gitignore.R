#'@export
#'
write_gitignore = function() {
    cat(".Rhistory
.Rproj.*
*.hpp
*.o
*.so
*.hpp
inst/doc
doc
Meta
.Rproj.user",

  file = ".gitignore", sep = "\n"
  )

}

