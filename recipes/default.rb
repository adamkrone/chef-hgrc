#
# Cookbook Name:: hgrc
# Recipe:: default
#
# Copyright (C) 2014
#

node['hgrc']['users'].each do |user|
  template "/home/#{user.name}/.hgrc" do
    source ".hgrc.erb"
    variables(
      :name => user.name,
      :auth => user.auth,
      :extensions => user.extensions
    )
    action :create
  end
end
