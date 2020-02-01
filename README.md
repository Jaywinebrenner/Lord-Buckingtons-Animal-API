# Lord Buckington's Animal Kingdom API

## By **Jay Winebrenner**

### Description
A Ruby-Rails based API that allows users to make calls to Create, Read, Update and Delete Animal at Lord Buckington's Animal Kingdom.

### Setup/Installation Requirements
![enter image description here](https://i.imgur.com/KW12jKcl.jpg)

## Opening the API and Running the Server
 1. Click the link shown in the above photo and download the file.
 2. Unzip the file and navigate to the folder via your terminal or command line application.
 3. Type $ // Bundle // to install all the gems used in the project.
 4. Type $ // rake db:create // to create a database, followed by // rake db:migrate // to migrate the database.
 5. For purposes of these instructions, anything inside of // is what is to be typed in the terminal. If the instruction says // hello // for example, you'd type just the word hello in the terminal.

## Making API calls
1. Using the routing specified below, you can make calls to Lord Buckington's Animal Kingdom API to get animals and their corresponding animals as well and add, update and delete animals housed at Lord Buckington's Animal Kingdom.

### Routing Specifications:
|End Point |Output|
|---|---|
| GET /shelters | Returns all available animals |
| GET animals/:id | Returns the animal with the corresponding id |
| POST /animals | Allows users to post an animal animal using the parameters of 'name' and 'location'|
| PUT /animals/:id | Allows users to update an existing animal animal using the parameters of 'name' and 'location'|
| DELETE /animals/:id | Allows users to delete an existing animal animal |
| GET /animals?name= | Allows user to search for animals by name |
| GET /animals?breed= | Allows user to search for animal breeds available |
| GET /randoms | Returns one random animal |
### Technologies Used

 - Ruby
 - Rails
 - Postgres
 - Postman

### Support and Contact

If you have any questions about anything at all, please don't hesitate to get in touch. jaywinebrenner@gmail.com


### License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Copyright (c) 2019 **Jay Winebrenner**
