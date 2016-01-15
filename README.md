Rails Diner
===========

Simple Rails application to handle a collection of recipes.


Requirements
------------

`Diner` was developer with Ruby version 2.2.3 and Rails version 4.2.4 on Mac OS X El 
Capitan. Installation instructions for both can be found at 
<https://gorails.com/setup/osx/10.11-el-capitan>


`Diner` also requires the following gems to work. Installation instruction can be found
at the links provided.
* will_paginate <https://github.com/mislav/will_paginate>
* will_paginate-bootstrap <https://github.com/bootstrap-ruby/will_paginate-bootstrap>
* carrierwave <https://github.com/carrierwaveuploader/carrierwave>


Installation
------------

Once you have an operational developer install of Ruby on Rails, download `diner` 
using the following method:


### Checkout from GitHub

Use the following command:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
git clone https://github.com/towen/rails-diner.git
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Configuration
-------------

Since `Diner` is intended as a sample application for training purposes only, I
have included everything you need to get started including the gems in the GemFile.

Execute these three commands inside the 'rails-diner' directory:

Migrate the database:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ rake db:migrate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Install all gems:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ bundle install
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Start the development server:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ rails server
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Your app should now be running at [http://localhost:3000/](<http://localhost:3000/>)


Thanks
--------

If you have any questions please feel free to contact me at 
[terry@iknowmac.com](<mailto:terry@iknowmac.com>).