## Auto deploying an app to shinyapps.io


This is the demo shiny app and is very lame, but the major point is 
the github actions that are used here to deploy after each commit in main/master.

This current version is pretty ugly, I could have used a script to set it up.



In your github repo set up your secrets:

```
SHINY_ACC_NAME
TOKEN
SECRET
MASTERNAME
TESTNAME
```


test docker image locally with 

```
IMAGENAME=<NAMETHISSOMETHING>
docker build -t $IMAGENAME . 
docker run --env-file .Renviron $IMAGENAME
```

REference material
- https://jarrettmeyer.com/2019/04/25/publishing-to-shinyapps-github-travis-ci
