#' Spotify Top 50
#'
#' Pulls top 50 most recently played Spotify songs
#' 
#' This package is designed to pull the 50 most recently played songs from a users Spotify, then chart the most played songs according to how much they are played. 
#' 
#' @param Authenticate the user information and use this to login to user account
#' 
#' @param load 50 songs, minimum: 1 Maximum: 50
#' 
#' @param graph the users top 50 songs by most played 
#' 
#' @example 
#' ****ask kurt what i should put here*****
#' 
#' @export

devtools::install_github("charlie86/spotifyr")
library(spotifyr)


Sys.setenv(SPOTIFY_CLIENT_ID = "xxxxxxxxxxxxxxxxxxxxx")
Sys.setenv(SPOTIFY_CLIENT_SECRET = "xxxxxxxxxxxxxxxxxxxxx")
access_token = get_spotify_access_token()


my_function = function(Sys.setenv(SPOTIFY_CLIENT_ID = "xxxxxxxxxxxxxxxxxxxxx")
                       Sys.setenv(SPOTIFY_CLIENT_SECRET = "xxxxxxxxxxxxxxxxxxxxx")
                       access_token = get_spotify_access_token()){
  
  new_object = spotifyr::get_my_recently_played(limit = 50)
  
  new_object %>% ggplot2::ggplot [INSERT THE REST OF THE CODE TO VISUALIZE HERE]
  
}




my_function = function(key){
  
  new_object = spotifyr::get_my_recently_played(limit = 50)
  
  new_object %>% ggplot2::ggplot [INSERT THE REST OF THE CODE TO VISUALIZE HERE]
  
}
