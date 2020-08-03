# Muzmatch Exercise 

Hi and welcome to my V1 API muzmatch code solution!

***


## Presentation

Solution for the problem present in the document `muzmatch - Full Stack and Backend Exercise (2020)`

I have purposely added multiple comments to the code to explain the solution and make it easier to understand.

A docker compose file has been added to the repo. Feel free to create an image.

In the DIR `postman` is a .json file. It contains the request for all end-points of the test. 

***


## Installation

Use the `muzmatch.sql` file in `database` DIR to create the DB. I have attached an image to explain the relationship between the tables.


Configure the DB in: `app\settings.php`


Run this following command from the main directory in order to finish the installation:
```
composer install
```


Run the local server with:
```
composer start
```


Run the PhpUnit test with: (Test run over dummy data present in the file muzmatch.sql)
```
composer test
```

***


## Some useful notes for improve the solution

**Due to the tight timelines and other duties I've been dealing during the development of this test I've been unable to develop everything I would like to. I have writen here is a list of additons I had in mind to complement this solution:**


* **DB**
* Some tables like ``user_account`` should have 3 more columns: ``created, updated, deleted`` in order to track the changes the user can make over the main profile.
* I didn't apply ORM Doctrine relationships ``(oneToMany, manyToOne, oneToOne)``. Instead I rely on native queries in order to make it more understable and save complexity. 
* (optional) The main user id could be generated for a library like ``uuid`` in order to create unique ids. 
* Create data fixtures with dummy data.


* **CODE**
* The search profiles process can be improved for sure and also caching is a good idea for storage some generic results valid for other users.
* The user ID should be encode in the request 
* This solution require a request parameter validation. 
* Response should be standardized using a DTO (Data Transfer Object) approach which will help us to skip object-relational impedance mismatch in long term.


* **TEST**
* This solution contains a simple bunch tests which only check the request response.
* Test build in Behat could be a good option to check the response payload. Also this involve the creation of code fixtures for generate dummy data.
*  Unit test will help us to cver the critical part of the system and not only the response like is the case.  

***


## About me

* **First name:** `Mario`
* **Last name:** `Frisuelos`
* **Linkedin profile:** [Click here!](https://www.linkedin.com/in/mario-j-frisuelos-garcia-0912b495/)