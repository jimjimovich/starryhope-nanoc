packages = %w(nginx advancecomp gifsicle jpegoptim libjpeg-progs optipng pngcrush)

packages.each do |p|
	package p do
	  action :install
	end
end

cookbook_file "/etc/nginx/sites-enabled/default" do
  source "site.conf"
  mode 0775
  owner "root"
  group "root"
end