#
# Cookbook Name:: hgrc
# Recipe:: default
#
# Copyright (C) 2014
#

include_recipe 'mercurial::default'

node['hgrc']['users'].each do |user|
  template "/home/#{user.name}/.hgrc" do
    source '.hgrc.erb'
    variables user: user
    action :create
  end
end
