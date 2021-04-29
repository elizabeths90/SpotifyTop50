spotify50
================
Elizabeth Schatz
2021-04-29

A package extending the capability of [spotifyr](https://github.com/charlie86/spotifyr/blob/master/R/player.R) 
by gathering the guven users top 50 most recently played spotify songs, then graphing those song by most played. This README is 
derived from Charlie86's excellent [spotifyr]((https://github.com/charlie86/spotifyr/blob/master/R/player.R)) 
documentation.

## Install

Install from GitHub with the following code:

```{r install, eval = FALSE}
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("https://github.com/elizabeths90/SpotifyTop50")
```

This package will require the user to authenticate their personal Spotify account. 
The user needs to go to this link https://developer.spotify.com/dashboard/ 
From there you will create an app, name it, add a description, then select 
"edit" and set "redirect urls" to "http://localhost:1410/"
This will allow the user to access their Client ID and Client Secret, which are 
necessary for this package. 

You can access additional information from the original package from Charlie86 ("https://github.com/charlie86/spotifyr/blob/master/R/player.R")
Lines 19-46 will be what you need to focus on in relation to this package. 

## Usage

To begin, the user must first enter the first part of the code, inserting their 
client id and secret authenticated in order to access the information necessary 
for this code.
 
```{r}
spotify50 = function(id, secret){
  
  Sys.setenv(SPOTIFY_CLIENT_ID = id)
  Sys.setenv(SPOTIFY_CLIENT_SECRET = secret)
  access_token = get_spotify_access_token()
}  
```

Secondly, the user will set their search limit to the desired number, for the 
purposes of this project, our limit will be 50.

```{r}
new_object = spotifyr::get_my_recently_played(limit = 50)
```

Third, you will plot the data you will get from the 50 songs gathered from this 
code.

```{r}
new_object %>% ggplot2::ggplot []
```

All together the code should be as followed:

```{r}
spotify50 = function(id, secret){
  
  Sys.setenv(SPOTIFY_CLIENT_ID = id)
  Sys.setenv(SPOTIFY_CLIENT_SECRET = secret)
  access_token = get_spotify_access_token()
 
  new_object = spotifyr::get_my_recently_played(limit = 50)
  
  new_object %>% ggplot2::ggplot [] 
  
}

```