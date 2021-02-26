FROM rocker/shiny:4.0.4
RUN install2.r rsconnect
WORKDIR /home/shinyusr
COPY app.R app.R 
#COPY deploy.R deploy.R
CMD Rscript -e "rsconnect::setAccountInfo(name=${SHINY_ACC_NAME}, token=${TOKEN}, secret=${SECRET}); rsconnect::deployApp(appName = ${MASTER_NAME},appTitle = 'shinyapplication')"
