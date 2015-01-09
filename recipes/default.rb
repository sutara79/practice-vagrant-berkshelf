#
# Cookbook Name:: my-lamp
# Recipe:: default

# (Berkshelf) PHPをインストール
include_recipe 'php'

# (Berkshelf) httpdをインストール、起動
httpd_service 'default' do
  action [:create, :start]
end

# httpdの自動起動
bash 'chkconfig httpd on' do
  user 'root'
  code 'chkconfig httpd on'
  only_if 'chkconfig --list httpd | grep 3:off'
end