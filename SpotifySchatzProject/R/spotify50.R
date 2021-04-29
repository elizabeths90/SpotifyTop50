#' spotify50
#'
#' Recently Played Songs
#' 
#' This package is designed to pull the 50 most recently played songs from a 
#' users Spotify, then chart the most played songs according to how much they 
#' are played. 
#' 
#' @param id client id as accessed from Spotify 
#' 
#' @param secret client secret as accessed from Spotify 
#' 
#' @export

spotify50 = function(id, secret){
  
  Sys.setenv(SPOTIFY_CLIENT_ID = id)
  Sys.setenv(SPOTIFY_CLIENT_SECRET = secret)
  access_token = get_spotify_access_token()
 
  new_object = spotifyr::get_my_recently_played(limit = 50)
  
  new_object %>% ggplot2::ggplot [] 
  
}


# esquisse::esquisser()