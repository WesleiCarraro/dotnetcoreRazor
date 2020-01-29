# dotnetcoreRazor

This sample contains a small book list application using asp dot net core and razor pages.

We have here: 

* Basic CRUD Operation project using Razor Pages

* Entity Framework Code First Methodology

* It also contains the Dockerfile necessary to build a linux container with the app running. 

*  The resulting image works both locally and when deployed to some cloud service. 

## Pre-Requirements
You need Docker installed in your machine.

* You need a SQL SERVER up.

* You need a database named BookListRazor.*

* You need a table named Book with the columns: *
    Id (integer and PK)
    Name (string)
    Author (string)
    ISBN (string)
    Description (string)

* You may also create them by using Code First approach, with Entity Framework. 
Basically is, first create the model Book, then go to package manager console and run:
```bash
add migration <any_name_of_migration>. 
```

Then run:
```bash
update-database.
```

And voilá: the database, table and properties will be created automatically. 

After download the folder, edit the appsettings.json with your ConnectionStrings (DefaultConnection field). 

 
## Installation with container

Download the app folder, go to it's root folder and run: 

```bash
$ docker build -t booklistrazor .
$ docker run -it --rm -p 8080:80 booklistrazor
```

 
## Installation without container

Download the app folder, go to root and run: code .
This will open Visual Studio Code (hope you get it in your machine).  
Give a Build. Go to the app folder > bin, search for BookListRazor.exe and run it. 



## Usage

On browser, go to https://localhost:8080 

Possible routes: 

```bash
https://localhost:8080/BookList
https://localhost:8080/BookList/Create
https://localhost:8080/BookList/Edit?id=1
https://localhost:8080/Error
https://localhost:8080/Privacy

Note: Delete and update are within Edit and Index (by buttons). 
```


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)