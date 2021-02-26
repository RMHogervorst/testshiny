## Auto deploying an app to shinyapps.io


This is the demo shiny app and is very lame, but the major point is 
the github actions that are used here to deploy after each commit in master.




test docker image locally with 

```
IMAGENAME=<NAMETHISSOMETHING>
docker build -t $IMAGENAME . 
docker run --env-file .Renviron $IMAGENAME
```

REference material
- https://jarrettmeyer.com/2019/04/25/publishing-to-shinyapps-github-travis-ci
