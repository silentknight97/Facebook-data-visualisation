library(devtools)
require (Rfacebook)
fb_oauth <- fbOAuth(app_id="1312105405576122
", app_secret="f45dd73c60b024ee57cb9c11cc70e68f",extended_permissions = TRUE)

save(fb_oauth, file="fb_oauth")

load("fb_oauth")
#page data for the posts of Narendra Modi
getPagedata <- getPage(177526890164 , token = fb_oauth,n = 100)
write.csv(df, file = "postfromFacebook2.csv")
