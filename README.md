SpotifyTop50
================
Elizabeth Schatz
2021-04-27

A package extending the capability of
[spotifyr](https://github.com/charlie86/spotifyr/blob/master/R/player.R)
by gathering the guven users top 50 most recently played spotify songs,
then graphing those song by most played. This README is derived from
Charlie86’s excellent
[spotifyr]((https://github.com/charlie86/spotifyr/blob/master/R/player.R))
documentation.

## Install

Install from GitHub with the following code:

``` r
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("https://github.com/elizabeths90/SpotifyTop50")
```

This package will require the user to authenticate their personal
spotify account. User needs to go to this link
<https://developer.spotify.com/dashboard/> From there you will create an
app, name it, add a description, then select “edit” and set “redirect
urls” to “<http://localhost:1410/>” This will allow the user to access
their Client ID and Client Secret, which are necessary for this package.
The code you need to load this information into RStudio is as follows:

`Sys.setenv(SPOTIFY_CLIENT_ID = "xxxxxxxxxxxxxxxxxxxxx") Sys.setenv(SPOTIFY_CLIENT_SECRET = "xxxxxxxxxxxxxxxxxxxxx") access_token = get_spotify_access_token()`
You can access additional information from the original package from
Charlie86
(“<https://github.com/charlie86/spotifyr/blob/master/R/player.R>”) Lines
19-46 will be what you need to focus on in relation to this package.

## Usage

There are two functions currently in use with this package: Getting the
users top 50 songs, and plotting them according to most played.

To begin, the user must first enter the following code, inserting their
keys where appropriate:

\`\`\`my\_function = function(key){

new\_object = spotifyr::get\_my\_recently\_played(limit = 50)

new\_object %&gt;% ggplot2::ggplot \[INSERT THE REST OF THE CODE TO
VISUALIZE HERE\]

} \`\`\`

First the user will hve to make sure they have their personal Spotify
account autheniticated in order to access the information necessary for
this code. You will want to make sure your limit is set to the correct
number o songs you wish to pull for your data, in this case, we will be
setting our limit at 50 sogns. The word “key” will be used to log in the
user.

\#Download SpotifyR devtools::install\_github(“charlie86/spotifyr”)

\#Load SpotifyR library(spotifyr)

\#Authenticate the user information Sys.setenv(SPOTIFY\_CLIENT\_ID =
“xxxxxxxxxxxxxxxxxxxxx”) Sys.setenv(SPOTIFY\_CLIENT\_SECRET =
“xxxxxxxxxxxxxxxxxxxxx”) access\_token = get\_spotify\_access\_token()
