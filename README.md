### Docker Mysql & PhpMyAdmin

`docker run --name demo-mysql  -e MYSQL_ROOT_PASSWORD=alnitek -d mysql:5.7`

`docker run --name demo-phpmyadmin -d --link demo-mysql:db -p 8081:80 phpmyadmin/phpmyadmin`


### create a Rails App with mysql

`rails new your-app-name -d mysql`

### set env secret variable

`EDITOR=vim rails credentials:edit`

launch the rails console:

`rails console`

in console

`Rails.application.credentials.config`

launch rails server:

`rails server`

launch db creation and migration:

`rails db:create`

`rails db:migrate`



