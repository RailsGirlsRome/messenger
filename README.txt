RailsGirls Messenger app
========================

FOR COACHES:

This one has no tags because commits are view and each commit can be seen
as a step to discuss and explain.

STEPS:

1 - add a welcome controller via a generator, show generators
2 - remove index.html to show controller, explain public/ folder
3 - Introduce bootstrap
4 - Introduce gems in general and devise, generate model etc.
5 - Add a first scaffold for contacts
6 - Add a scaffold for Audio files and introduce papaerclip for uploads
7 - Change views for file uploads on audio files, show an upload
8 - Add scaffold for message delivery to join audio files and contacts
9 - Introduce concept of configuration, .env file and why skip versioning
10 - Change upload to send files to S3

     !!! Add aws-sdk gem !!!

11 - Introduce a new file field `xml_file` to MessageDelivery:
     This one is required because Plivo expects to pick a definition file
     somewhere on the web.
12 - Introduce a non ActiveRecrod class PhoneCall

     !!! Add httparty gem !!!

13 - Complete with view cleanups

TODO :

* Flash messages are not rendered
* Some views have scaffold generated names

IMPROVEMENTS, DIY, spare time stuff:

* show count of succesful message deliveries
* improve resource protection
* validations on models
