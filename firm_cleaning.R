library(stringr); library(dplyr)
cleanFirm <- function(string){
  string <- string |>
    tolower() |>
    str_replace_all("\\(.+\\)|( inc\\.?)$|( plc)$|( corp\\.?)$|\\.com|
                    |(?<!&)( co\\.?)$|( ltd\\.?)$|( l\\.?l\\.?c\\.?)$|
                    |( corporation)$|( incorporated)$", "") |>
    str_replace_all("-|/", " ") |>
    str_replace_all("([^([:alnum:]&\\s)])", "") |>
    str_replace_all("\\s{2,}", "\\s") |>
    trimws()
}