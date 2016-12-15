
directory '/tmp/folder' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  notifies :stop, 'service[service.name.auto]', :before
  notifies :start, 'service[service.name.auto]', :immediately
end

service "service.name.auto" do
  action :nothing
end
