set :branch, ENV.fetch('BRANCH', :main)
server "ec2-35-180-164-255.eu-west-3.compute.amazonaws.com", user: "deploy", roles: %w(web app db)
