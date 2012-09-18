passdock-ruby
=============

Sample code to interact with Passdock API in ruby.

### Dependancies

This sample code requires *httparty*.

Use 
    
    gem install httparty

to istall them.

### Get your authentication token

You need to register on [api.passdock.com](https://api.passdock.com) and get an [api token](https://api.passdock.com/settings).

### Let's start

Once obtained you can create a new istance of the Passdock object.

    passdock = Passdock.new("YOUR_TOKEN")

Then you can call some methods to get the desired informations out of Passdock or to create new Passes.

All the replies are JSON formatted text files.

To get started just add one of the following line, appropriately modified at the bottom of the *passdock.rb* file.

#### Get Templates

Get all your templates for your account

    pp passdock.templates
    
#### Get a Template

Pass the id of the template as argument

    pp passdock.template(82)

#### Destroy a Template 

The first argument is the template id, the second one if you want exanded errors.

    pp passdock.destroy_template(82, true)

#### Get a Pass

The first parameter is the Pass ID, the second its template ID

    pp passdock.pass(132, 82)

#### Create a Pass

The first argument is the a JSON jash containing the Pass structure, more informations on [api.passdock.com/doc](https://api.passdock.com/doc).
The second argument is the template id, the third one if you want debug informations and the last one exanded errors.

    pp passdock.create_pass('{"serial_number":"1234", "gate":"12"}', 82, true, false)

#### Update a Pass

The first argument is the a JSON jash containing the Pass structure, more informations on [api.passdock.com/doc](https://api.passdock.com/doc).
The second argument is the template id, the third one if you want debug informations and the last one exanded errors.

    pp passdock.update_pass('{"serial_number":"5678", "gate":"15"}', 94, 82, true, false)

#### Download a Pass

The first parameter is the Pass ID, the second its template ID

    pp passdock.download_pass(82, 82)
    
#### Destroy a Pass 

The first argument is the template id, the second one if you want exanded errors.

    pp passdock.destroy_pass(94, 82, true)