# README
Build this rails API Application, it has the following features 
Devise based user authentication + authentication_token


Ruby version: ruby-2.4.0
Rails: 5.1.0

rails new invoiced --api --no-sprockets -d postgresql

gem install actionpack -v '5.1.2'
bundle install

rails g model contact
rails db:create
rails db:migrate

rails g controller v1/contacts

#Use [Rack CORS](https://github.com/cyu/rack-cors) for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible

#We used devise gem for authentication 
gem [devise](https://github.com/plataformatec/devise)

rails g devise:install
rails g devise user
rails db:migrate
rails g controller v1/sessions

#I used simple_token_authentication gem for token authentication 
Ref: [simple_token_authentication](https://github.com/gonzalo-bulnes/simple_token_authentication).

rails g migration AddAuthenticationTokenToUsers "authentication_token:string{30}:uniq"
rails db:migrate

#JSON Object view
[Jbuilder](https://github.com/rails/jbuilder): generate JSON objects with a Builder-style DSL

#use POSTMAN as Client to Test the API respsonse.