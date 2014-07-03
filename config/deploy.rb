# -*- encoding : utf-8 -*-
require 'capistrano/ext/multistage'
require 'bundler/capistrano' #Using bundler with Capistrano
require 'cape'
require "dotenv/deployment/capistrano"

set :stages, %w(staging production)
set :default_stage, "production"


Cape do
  mirror_rake_tasks :dev
end
