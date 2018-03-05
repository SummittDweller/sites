HISTORY.md

This site, specifically the site1/ and site2/ folder construct, was built using instructions from https://github.com/wodby/docker4drupal/blob/master/docs/multiple-projects.md.  The root docker-compose.yml structure that implements TraefIk is based on the discussion at https://github.com/wodby/docker4drupal/issues/50.

Note that the MacBook's local Apache server was turned off using instructions from https://tosbourn.com/turn-off-the-built-in-apache-on-osx/.  This should free up port 80 for use by Docker containers.

Self-signed keys and certs were generated using instructions from http://www.selfsignedcertificate.com/.  For example, creation of a 'universal' test key/cert pair was per @cbeier at https://github.com/wodby/docker4drupal/issues/50 using...

      sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /certs/key.pem -out /certs/cert.pem

Alternate instructions per http://www.selfsignedcertificate.com/ for a site1.docker.localhost site. for example, are...

      key: openssl genrsa -out site1.docker.localhost.key 2048
      cert: openssl req -new -x509 -key site1.docker.localhost.key -out site1.docker.localhost.cert -days 3650 -subj /CN=site1.docker.localhost

The instructions at http://portainer.readthedocs.io/en/stable/configuration.html were followed to make Portainer authentication (in production) a reality.
