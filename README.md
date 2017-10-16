# behat
Install steps:
- Run `composer install`
- Run `docker-compose pull`

To run tests:
- Run `docker-composer up -d` to start selenium hub and nodes
- Run `./BrowserStackLocal --key <Browserstack automation key> --force-local` for local browserstack tests
- Run parallel.sh with any of the parameters separeted by coma from the behat.yml file. 
Example: `./parallel.sh firefox,chrome,browserstack_IE`

The results are saved in the results folder. 
