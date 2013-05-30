# Starry Hope Nanoc

## What is this?
This is the source code used to build [www.starryhope.com](http://www.starryhope.com). Starry Hope is built using open source technologies. So many people in the open source community have helped me over the years and with this project (through their websites, github repos and IRC chat), so I thought I would be a good open source citizen and release this code for anyone to view, copy, use or fork.

Feel free to browse this code for ideas for making your own nanoc powered blog, or download it and use it as a template for your own site. If you find this useful, it'd be great if you would link to [www.starryhope.com](http://www.starryhope.com).

## Get started
If you have Virtualbox and [Vagrant](http://www.vagrantup.com/) installed, you can get started really quickly. If you don't use Vagrant, I highly suggest you give it a try.

#### 1. Clone this repository
    git clone git@github.com:jimjimovich/starryhope-nanoc.git
    cd starryhope-nanoc

#### 2. Set up VM with Vagrant
    vagrant up
  
#### 3. Edit config.yaml to fit your needs

#### 4. Compile site 
    vagrant ssh
    cd /vagrant
    sudo service nginx restart # needed first time only
    nanoc co

#### 5. Browse to [http://localhost:8080](http://localhost:8080) to see the results!

## Get started on [Cloud9](https://c9.io)

#### Configure and start nginx
Generate your conf file (to add your ip, port and root folder)
    c9-nginx/generate-conf.sh
Start nginx
    nginx -p $PWD/c9-nginx/                                                                                                                                         
Stop nginx
    nginx -s stop -p $PWD/c9-nginx/


## Software Used
- [nanoc](http://nanoc.ws/)
- [Foundation 4](http://foundation.zurb.com/)
- [Sass](http://sass-lang.com/)
- [Vagrant](http://www.vagrantup.com/)
- [CzBox2](http://janpecha.iunas.cz/czbox/example/)
- [nanoc-cachebuster](http://avdgaag.github.io/nanoc-cachebuster/)
- [FC Webicons](https://github.com/adamfairhead/webicons) by [Fairhead Creative](http://fairheadcreative.com/)

## License
### The MIT License (MIT)
Copyright (c) 2013 Jim Mendenhall (<a href="http://plus.google.com/112729990417360524968?rel=author">Google +</a> profile)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.