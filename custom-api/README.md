# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


rails g model Character publisher:references name:string alias:string description:text evil:boolean

rails g model Publisher name:string description:text

rails g controller api/v1/Publishers

rails g controller api/v1/Characters

rails routes

[https://medium.com/@oliver.seq/creating-a-rest-api-with-rails-2a07f548e5dc](https://medium.com/@oliver.seq/creating-a-rest-api-with-rails-2a07f548e5dc)