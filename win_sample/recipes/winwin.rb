#
# Cookbook:: win_sample
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved
file 'C:\chef\sample.txt' do
  content '<html>This is a placeholder for the home page.</html>'
end
directory 'C:MyDirectory' do
  action :create
  recursive true
end
windows_task 'chef-client' do
  command 'chef-client'
  run_level :highest
  frequency :minute
  frequency_modifier 5
end
powershell_package 'xCertificate' do
  action :install
  version '1.1.0.0'
end
powershell_package 'tomcat' do
  action :install
  version 'latest'
end

