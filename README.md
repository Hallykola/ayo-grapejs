# ayo-grapejs
## Use
Kindly check the templates at https://www.canva.com/learn/invoice-design-with-samples/ as they are what we want to replicate/create.

Check the sql file called data_raw in the database folder and import it to your database on your local machine.
Don't forget to check the db.php file to update the database username and password to fit your database user login details.

To create templates, visit http://localhost/folder-containing-this-files/?ref=1
to create a template with id =1 on the database table,
or http://localhost/folder-containing-this-files/?ref=3 to create a template with id =3 on the database table.
You can always edit templates by visiting their url as above. It saves automatically.


If you do not specify "ref" query in url, i.e you visit http://localhost/folder-containing-this-files/
it autopmatically create a template with the next available id on the database table. Although this id will nor be visible in the url.
You can start a new template from an already designed one by visiting
http://localhost/folder-containing-this-files/?base=3
where base=3 means start a new template from template 3 (template with id 3) with a new id automatically assigned to the new template.

You can check your database table for templates id if you need them. Sorry for the inconveniences.