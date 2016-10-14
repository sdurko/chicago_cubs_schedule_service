# chicago_cubs_schedule_service
basic Rails application that shows the Chicago Cubs logo, schedule, and colors.

## Environment
The following services are expected:
* access, from the server, to the world-wide-web is required for builds, but not for runtime.
* PostgreSql 9.x
    * accessible locally
    * running on port 5432
* Ruby MRI version 2.3.1
    * any available build will do
    * https://www.ruby-lang.org/en/news/2016/04/26/ruby-2-3-1-released/
* no ruby manager is implied but CLI access to *bundler* is implied.
    * if Ruby is installed, then `gem install bundler` to install

## Setup the Service
### dependencies
`bundle install` to install Ruby gems
### database
* `rake db:create` to create the database
* `rake db:migrate` to configure schema
* `rake db:seed` to populate database

## Run the Service
`rails server` will start the service with default options (see below)
#####detail
`rails server -p <PORT> -b <BIND_ADDRESS>`
* `<PORT>` is the host port to listen on. The default is 3000 if this option is omitted.
* `<BIND_ADDRESS>` is the host address to bind to. The default is localhost (127.0.0.1) if this option is omitted.

## Run the Tests
`rake spec`

# Hit the Service
* [http://localhost:3000/]() will bring up the full schedule page.
* [http://localhost:3000/search/]() will bring up the schedule in json format.
* *localhost:3000* is the hostname if defaults are used. This should be changed to your own IP/hostname configuration otherwise.
