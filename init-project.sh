git clone ssh://git@gitlab.inuits.io:2224/customers/scouts/werkwinkeldatabank/scouts-wwdb-api.git api
git clone ssh://git@gitlab.inuits.io:2224/customers/scouts/werkwinkeldatabank/scouts-wwdb-frontend.git frontend
git clone https://github.com/ricardoamaro/drupal8-docker-app.git drupal8-test

# Add scouts remotes
cd api
git remote add scouts git@github.com:ScoutsGidsenVL/werkwinkeldatabank-backend.git
cd ../frontend
git remote add scouts git@github.com:ScoutsGidsenVL/werkwinkeldatabank-frontend.git
cd ..

git clone git@github.com:inuits/inuits-vuejs-oidc.git

# DRUPAL
# To get drupal working: After the clone cd drupal8-test
# ./drupal8_local.sh - This will init the project, drupal modules, database etc but will also start the local server which you can cancel once it's finished
# back in the root of this project just run ./start-docker.sh - If it's stuck on "Building drupal" for too long just cancel and try again
# Once it's installed copy the file scouts-wwdb.js from frontend/dist and also copy the frontend/dist/cfg folder to drupal8-test/local/web/sites/default/files