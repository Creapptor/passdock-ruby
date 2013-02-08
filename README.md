passdock-ruby
=============

Sample code to interact with Passdock API in ruby.

### Dependancies

This sample code requires *httparty*.

Use 
    
    gem install httparty
    gem install passdock

to install them.

### Get your authentication token

You need to register on [api.passdock.com](https://api.passdock.com) and get an [api token](https://api.passdock.com/settings).

### Let's start

Require the gems

    require 'httparty'
    require 'passdock'
    require 'pp'

Once obtained you can create a new istance of the Passdock object and set the API key.

    Passdock.api_key = "YOUR_TOKEN"
    
To get the templates as json use 
    
    pp = Passdock.templates
    

Then you can call some methods to get the desired informations out of Passdock or to create new Passes.

All the replies are JSON formatted text files.

To get started just add one of the following line, appropriately modified at the bottom of the *passdock.rb* file.

#### Get Templates

Get all your templates for your account

    pp Passdock.templates
    
#### Get a Template

Pass the id of the template as argument

    pp Passdock.template(82)

#### Destroy a Template 

The first argument is the template id, the second one if you want exanded errors.

    pp Passdock.destroy_template(82, true)

#### Get a Pass

The first parameter is the Pass ID, the second its template ID

    pp Passdock.pass(132, 82)

#### Create a Pass

The first argument is the a JSON jash containing the Pass structure, more informations on [api.passdock.com/doc](https://api.passdock.com/doc).
The second argument is the template id, the third one if you want debug informations and the last one exanded errors.

    pp Passdock.create_pass('{"serial_number":"1234", "gate":"12"}', 82, true, false)

#### Update a Pass

The first argument is the a JSON jash containing the Pass structure, more informations on [api.passdock.com/doc](https://api.passdock.com/doc).
The second argument is the template id, the third one if you want debug informations and the last one exanded errors.

    pp Passdock.update_pass('{"serial_number":"5678", "gate":"15"}', 94, 82, true, false)

#### Download a Pass

The first parameter is the Pass ID, the second its template ID

    pp Passdock.download_pass(82, 82)
    
#### Destroy a Pass 

The first argument is the template id, the second one if you want exanded errors.

    pp Passdock.destroy_pass(94, 82, true)