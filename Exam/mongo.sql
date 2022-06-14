
---
> show dbs
admin       0.000GB
candidate   0.000GB
college     0.000GB
config      0.000GB
employee    0.000GB
employeedb  0.000GB
local       0.000GB
student     0.000GB
test        0.000GB
> use movie
switched to db movie
> show Collections
uncaught exception: Error: don't know how to show [Collections] :
shellHelper.show@src/mongo/shell/utils.js:1211:11
shellHelper@src/mongo/shell/utils.js:838:15
@(shellhelp2):1:1
> show collection
uncaught exception: Error: don't know how to show [collection] :
shellHelper.show@src/mongo/shell/utils.js:1211:11
shellHelper@src/mongo/shell/utils.js:838:15
@(shellhelp2):1:1
> db
movie
> db.createCollections("movies")
uncaught exception: TypeError: db.createCollections is not a function :
@(shell):1:1
>
> db.movies.insert({"title":"Fight Club","writer":"Chuck Palahniuk","year":1999,"actors":[ {"Bradpitt","Edward Norton"}]})

@(shell):1:99
> db.movies.insert({title:"Fight Club",writer:"Chuck Palahniuk",year:1999,actors:[{"Bradpitt","Edward Norton"}]})
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:91
> db.movies.insert({title:"Fight Club",writer:"Chuck Palahniuk",year:1999,actors:([{"Bradpitt","Edward Norton"}])})
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:92
> db.movies.insert({"title":"Fight Club","writer":"Chuck Palahniuk","year":1999,"actors":[{"Brad pitt","Edward Norton"}]})
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:100
> db.movies.insert({"title":"Fight Club","writer":"Chuck Palahniuk","year":1999,"actors":(["Brad pitt","Edward Norton"])})
WriteResult({ "nInserted" : 1 })
> db.movies.insert({"title":"Pulp Fiction","writer":"Quentine Tarantino","year":1994,"actors":[{"John Travolta","Uma Thurman"}]})
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:109
> db.movies.insert({"title":"Pulp Fiction","writer":"Quentine Tarantino","year":1994,"actors":(["John Travolta","Uma Thurman"])})
WriteResult({ "nInserted" : 1 })
> db.movies.insert({"title":"Inglorious Basterds","writer":"Quentine Tarantino","year":2009,"actors":(["Brad Pitt","Diane Kruger"])})
WriteResult({ "nInserted" : 1 })
> db.movies.insert({"title":"Inglorious Basterds","writer":"Quentine Tarantino","year":2009,"actors":(["Brad Pitt","Diane Kruger","Eli Roth"])})
WriteResult({ "nInserted" : 1 })

> db.movies.insert({"title":"The Hobbit:An Unexpected Journey","writer":"J.R.R.Tolkein","year":2012,"franchise":"The Hobbit"})
WriteResult({ "nInserted" : 1 })
> db.movies.insert({"title":"The Hobbit:The Desolation of Smaug","writer":"J.R.R.Tolkein","year":2013,"franchise":"The Hobbit"})
WriteResult({ "nInserted" : 1 })
> db.movies.insert({"title":"The Hobbit:The Battle of the Five Armies","writer":"J.R.R.Tolkein","year":2012,"franchise":"The Hobbit","synopsis":Bilbo and Company are forced to engange in a war against a array of combatans and keep the Loney Mountain from falling into the hands of a rising darkness"})
uncaught exception: SyntaxError: missing } after property list :
@(shell):1:148
> db.movies.insert({"title":"The Hobbit:The Battle of the Five Armies","writer":"J.R.R.Tolkein","year":2012,"franchise":"The Hobbit","synopsis":"Bilbo and Company are forced to engange in a war against a array of combatans and keep the Loney Mountain from falling into the hands of a rising darkness"})
WriteResult({ "nInserted" : 1 })
> db.movies.insert({"title":"Pee Wee Herman's Big Adventure"})
WriteResult({ "nInserted" : 1 })
> db.movies.insert({"title":"Avatar"})
WriteResult({ "nInserted" : 1 })
> db.movies.find().pretty()
{
        "_id" : ObjectId("62a81715da05c2d45b3ba1f5"),
        "title" : "Fight Club",
        "writer" : "Chuck Palahniuk",
        "year" : 1999,
        "actors" : [
                "Brad pitt",
                "Edward Norton"
        ]
}
{
        "_id" : ObjectId("62a817d1da05c2d45b3ba1f6"),
        "title" : "Pulp Fiction",
        "writer" : "Quentine Tarantino",
        "year" : 1994,
        "actors" : [
                "John Travolta",
                "Uma Thurman"
        ]
}
{
        "_id" : ObjectId("62a8184fda05c2d45b3ba1f7"),
        "title" : "Inglorious Basterds",
        "writer" : "Quentine Tarantino",
        "year" : 2009,
        "actors" : [
                "Brad Pitt",
                "Diane Kruger"
        ]
}
{
        "_id" : ObjectId("62a81871da05c2d45b3ba1f8"),
        "title" : "Inglorious Basterds",
        "writer" : "Quentine Tarantino",
        "year" : 2009,
        "actors" : [
                "Brad Pitt",
                "Diane Kruger",
                "Eli Roth"
        ]
}
{
        "_id" : ObjectId("62a819cbda05c2d45b3ba1f9"),
        "title" : "The Hobbit:An Unexpected Journey",
        "writer" : "J.R.R.Tolkein",
        "year" : 2012,
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("62a81a12da05c2d45b3ba1fa"),
        "title" : "The Hobbit:The Desolation of Smaug",
        "writer" : "J.R.R.Tolkein",
        "year" : 2013,
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("62a81b27da05c2d45b3ba1fb"),
        "title" : "The Hobbit:The Battle of the Five Armies",
        "writer" : "J.R.R.Tolkein",
        "year" : 2012,
        "franchise" : "The Hobbit",
        "synopsis" : "Bilbo and Company are forced to engange in a war against a array of combatans and keep the Loney Mountain from falling into the hands of a rising darkness"
}
{
        "_id" : ObjectId("62a81b7ada05c2d45b3ba1fc"),
        "title" : "Pee Wee Herman's Big Adventure"
}
{ "_id" : ObjectId("62a81b8eda05c2d45b3ba1fd"), "title" : "Avatar" }
> db.movies.find({"writer":"Quentine Tarantino"}).pretty()
{
        "_id" : ObjectId("62a817d1da05c2d45b3ba1f6"),
        "title" : "Pulp Fiction",
        "writer" : "Quentine Tarantino",
        "year" : 1994,
        "actors" : [
                "John Travolta",
                "Uma Thurman"
        ]
}
{
        "_id" : ObjectId("62a8184fda05c2d45b3ba1f7"),
        "title" : "Inglorious Basterds",
        "writer" : "Quentine Tarantino",
        "year" : 2009,
        "actors" : [
                "Brad Pitt",
                "Diane Kruger"
        ]
}
{
        "_id" : ObjectId("62a81871da05c2d45b3ba1f8"),
        "title" : "Inglorious Basterds",
        "writer" : "Quentine Tarantino",
        "year" : 2009,
        "actors" : [
                "Brad Pitt",
                "Diane Kruger",
                "Eli Roth"
        ]
}
> db.movies.find({"actors":"Brad Pitt"}).pretty()
{
        "_id" : ObjectId("62a8184fda05c2d45b3ba1f7"),
        "title" : "Inglorious Basterds",
        "writer" : "Quentine Tarantino",
        "year" : 2009,
        "actors" : [
                "Brad Pitt",
                "Diane Kruger"
        ]
}
{
        "_id" : ObjectId("62a81871da05c2d45b3ba1f8"),
        "title" : "Inglorious Basterds",
        "writer" : "Quentine Tarantino",
        "year" : 2009,
        "actors" : [
                "Brad Pitt",
                "Diane Kruger",
                "Eli Roth"
        ]
}
> db.movies.find({"year":1990}).pretty()
> db.movies.find({"year":>1990}).pretty()
uncaught exception: SyntaxError: expected expression, got '>' :
@(shell):1:23
> db.movies.find({"year":{$gt:1990}).pretty()
... }
uncaught exception: SyntaxError: missing } after property list :
@(shell):1:33
> db.movies.find({"year":{$gt:1990}}).pretty() }
uncaught exception: SyntaxError: expected expression, got '}' :
@(shell):1:43
> db.movies.find({"year":{$gt:1990}}).pretty()
{
        "_id" : ObjectId("62a81715da05c2d45b3ba1f5"),
        "title" : "Fight Club",
        "writer" : "Chuck Palahniuk",
        "year" : 1999,
        "actors" : [
                "Brad pitt",
                "Edward Norton"
        ]
}
{
        "_id" : ObjectId("62a817d1da05c2d45b3ba1f6"),
        "title" : "Pulp Fiction",
        "writer" : "Quentine Tarantino",
        "year" : 1994,
        "actors" : [
                "John Travolta",
                "Uma Thurman"
        ]
}
{
        "_id" : ObjectId("62a8184fda05c2d45b3ba1f7"),
        "title" : "Inglorious Basterds",
        "writer" : "Quentine Tarantino",
        "year" : 2009,
        "actors" : [
                "Brad Pitt",
                "Diane Kruger"
        ]
}
{
        "_id" : ObjectId("62a81871da05c2d45b3ba1f8"),
        "title" : "Inglorious Basterds",
        "writer" : "Quentine Tarantino",
        "year" : 2009,
        "actors" : [
                "Brad Pitt",
                "Diane Kruger",
                "Eli Roth"
        ]
}
{
        "_id" : ObjectId("62a819cbda05c2d45b3ba1f9"),
        "title" : "The Hobbit:An Unexpected Journey",
        "writer" : "J.R.R.Tolkein",
        "year" : 2012,
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("62a81a12da05c2d45b3ba1fa"),
        "title" : "The Hobbit:The Desolation of Smaug",
        "writer" : "J.R.R.Tolkein",
        "year" : 2013,
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("62a81b27da05c2d45b3ba1fb"),
        "title" : "The Hobbit:The Battle of the Five Armies",
        "writer" : "J.R.R.Tolkein",
        "year" : 2012,
        "franchise" : "The Hobbit",
        "synopsis" : "Bilbo and Company are forced to engange in a war against a array of combatans and keep the Loney Mountain from falling into the hands of a rising darkness"
}
> db.movies.find({"year":{$lt:2000,$gt:2010}}).pretty()
> db.movies.find({$or:[{"year":{$lt:2000,$gt:2010}}]}).pretty()
> db.movies.find({$or:[{"year":{$lt:2000},{$gt:2010}}]})
> db.movies.find({$or:[{year:{$lt:2000},{$gt:2010}}]})
> db.movies.find({$or:[{year:{$lt:2000,$gt:2010}}]})
> db.movies.find({$or:[{"year":{$lt:2000},{$gt:2010},"name":1}]})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:40
> db.movies.find({$or:[{"year":{$lt:2000},{$gt:2010}],"name":1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:40
> db.movies.aggragate({$or:[{"year":{$lt:2000},{$gt:2010}}]})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:45
> db.movies.find({$or:[{year:{$lt:2000},{$gt:2010}}]})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:38
> db.movies.find({$or:[{"name":{},{year:{$lt:2000},{$gt:2010}}]})
... )
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:32
> db.movies.find({$or:[{"name":{},{year:{$lt:2000},{$gt:2010}}}]})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:32
> db.movies.find({$or:[{"name":{},{"year":{$lt:2000},{$gt:2010}}}]})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:32
> db.movies.find({"title":{},"year":{$gt:1990}}).pretty()
> db.movies.find({"title":1,"year":{$gt:1990}}).pretty()
> db.movies.find({title:1,"year":{$gt:1990}}).pretty()
> db.movies.find({},"year":{$gt:1990}}).pretty()
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:24
> db.movies.find({{"title":1},"year":{$gt:1990}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:16
> db.movies.find({"title":1,"year":{$gt:1990}}).pretty()
> db.movies.find({title:1,"year":{$gt:1990}}).pretty()
> db.movies.find({"year":{$gt:1990},"title":1}).pretty()
> db.movies.find({"year":{$gt:1990},{"title":1}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.updateOne({"title":"The hobit:The Desolation of Smaug","synopsis":The dwarves,along with Bilbo Bagging and Gandalf the Gray,continue their quest to reclaim Erebor,their homeland,from smaug.Bilbo Baggins is in possession of a ,ysterious and magical ring"})
uncaught exception: SyntaxError: missing } after property list :
@(shell):1:80
> db.movies.updateOne({{"title":"The hobit:The Desolation of Smaug"},{"synopsis":The dwarves,along with Bilbo Bagging and Gandalf the Gray,continue their quest to reclaim Erebor,their homeland,from smaug.Bilbo Baggins is in possession of a ,ysterious and magical ring"}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:21
> db.movies.find({"synopsis":{$regex:"dwarves"}})
> db.movies.find({"year":{$gt:1990},"title":{}}).pretty()
> db.movies.find({"title.year":{$gt:1990}}).pretty()
> db.movies.find({"title":{1},year":{$gt:1990}}).pretty()
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:26
> db.movies.find({"title":{1},"year":{$gt:1990}}).pretty()
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:26
> db.movies.find({{"title":1},"year":{$gt:1990}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:16
> db.movies.find({},{"year":{$gt:1990}}}).pretty()
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:37
> db.movies.find({{},{"year":{$gt:1990}}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:16
> db.movies.find({},{"year":{$gt:1990}}).pretty()
Error: error: {
        "ok" : 0,
        "errmsg" : "Expression $gt takes exactly 2 arguments. 1 were passed in.",
        "code" : 16020,
        "codeName" : "Location16020"
}
> db.movies.find({},{year:{$gt:1990}})
Error: error: {
        "ok" : 0,
        "errmsg" : "Expression $gt takes exactly 2 arguments. 1 were passed in.",
        "code" : 16020,
        "codeName" : "Location16020"
}
> db.movies.find({synopsis:{$regex:"Bilbo"}})
{ "_id" : ObjectId("62a81b27da05c2d45b3ba1fb"), "title" : "The Hobbit:The Battle of the Five Armies", "writer" : "J.R.R.Tolkein", "year" : 2012, "franchise" : "The Hobbit", "synopsis" : "Bilbo and Company are forced to engange in a war against a array of combatans and keep the Loney Mountain from falling into the hands of a rising darkness" }
> db.movies.find({},{synopsis:{$regex:"Bilbo"}})
Error: error: {
        "ok" : 0,
        "errmsg" : "Unknown expression $regex",
        "code" : 31325,
        "codeName" : "Location31325"
}
> db.movies.find({synopsis:{$regex:"Bilbo"},{},{title:1})
... )
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:42
> db.movies.find({synopsis:{$regex:"Bilbo"},{},{title:1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:42
> db.movies.find({"year":{$gt:1990},{},{title:1}).pretty()
... )
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$gt:1990},{},{title:1}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({year:{$gt:1990},{},{title:1}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:32
> db.movies.find({"year":{$gt:1990},{},{"title":1}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$gt:1990},{"title":1}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$gt:1990}}).pretty()
{
        "_id" : ObjectId("62a81715da05c2d45b3ba1f5"),
        "title" : "Fight Club",
        "writer" : "Chuck Palahniuk",
        "year" : 1999,
        "actors" : [
                "Brad pitt",
                "Edward Norton"
        ]
}
{
        "_id" : ObjectId("62a817d1da05c2d45b3ba1f6"),
        "title" : "Pulp Fiction",
        "writer" : "Quentine Tarantino",
        "year" : 1994,
        "actors" : [
                "John Travolta",
                "Uma Thurman"
        ]
}
{
        "_id" : ObjectId("62a8184fda05c2d45b3ba1f7"),
        "title" : "Inglorious Basterds",
        "writer" : "Quentine Tarantino",
        "year" : 2009,
        "actors" : [
                "Brad Pitt",
                "Diane Kruger"
        ]
}
{
        "_id" : ObjectId("62a81871da05c2d45b3ba1f8"),
        "title" : "Inglorious Basterds",
        "writer" : "Quentine Tarantino",
        "year" : 2009,
        "actors" : [
                "Brad Pitt",
                "Diane Kruger",
                "Eli Roth"
        ]
}
{
        "_id" : ObjectId("62a819cbda05c2d45b3ba1f9"),
        "title" : "The Hobbit:An Unexpected Journey",
        "writer" : "J.R.R.Tolkein",
        "year" : 2012,
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("62a81a12da05c2d45b3ba1fa"),
        "title" : "The Hobbit:The Desolation of Smaug",
        "writer" : "J.R.R.Tolkein",
        "year" : 2013,
        "franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("62a81b27da05c2d45b3ba1fb"),
        "title" : "The Hobbit:The Battle of the Five Armies",
        "writer" : "J.R.R.Tolkein",
        "year" : 2012,
        "franchise" : "The Hobbit",
        "synopsis" : "Bilbo and Company are forced to engange in a war against a array of combatans and keep the Loney Mountain from falling into the hands of a rising darkness"
}
> db.movies.find({"year":{$gt:1990},{"title":1}).pretty()
... )
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$gt:1990},{"title":1}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$gt:1990},{},{"title":1}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$gt:1990},{},{"title":"1"}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$gt:1990},{}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({year:{$gt:1990},{}}).pretty()
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:32
> db.movies.find({year:{$gt:1990}})
{ "_id" : ObjectId("62a81715da05c2d45b3ba1f5"), "title" : "Fight Club", "writer" : "Chuck Palahniuk", "year" : 1999, "actors" : [ "Brad pitt", "Edward Norton" ] }
{ "_id" : ObjectId("62a817d1da05c2d45b3ba1f6"), "title" : "Pulp Fiction", "writer" : "Quentine Tarantino", "year" : 1994, "actors" : [ "John Travolta", "Uma Thurman" ] }
{ "_id" : ObjectId("62a8184fda05c2d45b3ba1f7"), "title" : "Inglorious Basterds", "writer" : "Quentine Tarantino", "year" : 2009, "actors" : [ "Brad Pitt", "Diane Kruger" ] }
{ "_id" : ObjectId("62a81871da05c2d45b3ba1f8"), "title" : "Inglorious Basterds", "writer" : "Quentine Tarantino", "year" : 2009, "actors" : [ "Brad Pitt", "Diane Kruger", "Eli Roth" ] }
{ "_id" : ObjectId("62a819cbda05c2d45b3ba1f9"), "title" : "The Hobbit:An Unexpected Journey", "writer" : "J.R.R.Tolkein", "year" : 2012, "franchise" : "The Hobbit" }
{ "_id" : ObjectId("62a81a12da05c2d45b3ba1fa"), "title" : "The Hobbit:The Desolation of Smaug", "writer" : "J.R.R.Tolkein", "year" : 2013, "franchise" : "The Hobbit" }
{ "_id" : ObjectId("62a81b27da05c2d45b3ba1fb"), "title" : "The Hobbit:The Battle of the Five Armies", "writer" : "J.R.R.Tolkein", "year" : 2012, "franchise" : "The Hobbit", "synopsis" : "Bilbo and Company are forced to engange in a war against a array of combatans and keep the Loney Mountain from falling into the hands of a rising darkness" }
> db.movies.find({"year":{$gt:1990},{},{"title":1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$gt:1990},{},{"title":-1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$gt:1990},{{},{"title":1}}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$gt:1990,{}},{"title":1}}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:33
> db.movies.remove("title":"Pee Wee Herman's Big Adventure")
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:24
> db.movies.remove({"title":"Pee Wee Herman's Big Adventure"})
WriteResult({ "nRemoved" : 1 })
> db.movies.find({"year":{$gt:1990},{},{"title":1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find()
{ "_id" : ObjectId("62a81715da05c2d45b3ba1f5"), "title" : "Fight Club", "writer" : "Chuck Palahniuk", "year" : 1999, "actors" : [ "Brad pitt", "Edward Norton" ] }
{ "_id" : ObjectId("62a817d1da05c2d45b3ba1f6"), "title" : "Pulp Fiction", "writer" : "Quentine Tarantino", "year" : 1994, "actors" : [ "John Travolta", "Uma Thurman" ] }
{ "_id" : ObjectId("62a8184fda05c2d45b3ba1f7"), "title" : "Inglorious Basterds", "writer" : "Quentine Tarantino", "year" : 2009, "actors" : [ "Brad Pitt", "Diane Kruger" ] }
{ "_id" : ObjectId("62a81871da05c2d45b3ba1f8"), "title" : "Inglorious Basterds", "writer" : "Quentine Tarantino", "year" : 2009, "actors" : [ "Brad Pitt", "Diane Kruger", "Eli Roth" ] }
{ "_id" : ObjectId("62a819cbda05c2d45b3ba1f9"), "title" : "The Hobbit:An Unexpected Journey", "writer" : "J.R.R.Tolkein", "year" : 2012, "franchise" : "The Hobbit" }
{ "_id" : ObjectId("62a81a12da05c2d45b3ba1fa"), "title" : "The Hobbit:The Desolation of Smaug", "writer" : "J.R.R.Tolkein", "year" : 2013, "franchise" : "The Hobbit" }
{ "_id" : ObjectId("62a81b27da05c2d45b3ba1fb"), "title" : "The Hobbit:The Battle of the Five Armies", "writer" : "J.R.R.Tolkein", "year" : 2012, "franchise" : "The Hobbit", "synopsis" : "Bilbo and Company are forced to engange in a war against a array of combatans and keep the Loney Mountain from falling into the hands of a rising darkness" }
{ "_id" : ObjectId("62a81b8eda05c2d45b3ba1fd"), "title" : "Avatar" }
> db.movies.find({"year":{$gt:1990},{},{title:1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$lt:2000},{title:1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$lt:"2000"},{title:1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:36
> db.movies.find({year:{$lt:2000},{title:1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:32
> db.movies.find({"year":{$lt:2000},{title:1})
... )
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$lt:2000},{title:1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({synopsis:{$regex:"Bilbo"}})
{ "_id" : ObjectId("62a81b27da05c2d45b3ba1fb"), "title" : "The Hobbit:The Battle of the Five Armies", "writer" : "J.R.R.Tolkein", "year" : 2012, "franchise" : "The Hobbit", "synopsis" : "Bilbo and Company are forced to engange in a war against a array of combatans and keep the Loney Mountain from falling into the hands of a rising darkness" }
> db.movies.find({synopsis:{$regex:"Bilbo"},{title:1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:42
> db.movies.find({synopsis:{$regex:"Bilbo"},{"title":1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:42
> db.movies.updateOne({{"title":"The hobit:The Desolation of Smaug"},{"synopsis":The dwarves,along with Bilbo Bagging and Gandalf the Gray,continue their quest to reclaim Erebor,their homeland,from smaug.Bilbo Baggins is in possession of a ,ysterious and magical ring"}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:21
> db.movies.updateOne({{"title":"The hobit:The Desolation of Smaug"},{"synopsis":"The dwarves,along with Bilbo Bagging and Gandalf the Gray,continue their quest to reclaim Erebor,their homeland,from smaug.Bilbo Baggins is in possession of a ,ysterious and magical ring"}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:21
> db.movies.updateOne({"title":"Pulp Fiction","actor":(["Samual l.Jackson])})
uncaught exception: SyntaxError: "" literal not terminated before end of script :
@(shell):1:75
> db.movies.updateOne({"title":"Pulp Fiction","actor":(["Samual l.Jackson]")})
... )
uncaught exception: SyntaxError: missing ] after element list :
@(shell):1:73
> db.movies.updateOne({"title":"Pulp Fiction","actor":(["Samual l.Jackson"])})
uncaught exception: TypeError: can't convert undefined to object :
DBCollection.prototype.updateOne@src/mongo/shell/crud_api.js:558:20
@(shell):1:1
> db.movies.updateOne({"title":"Pulp Fiction","actors":(["Samual l.Jackson"])})
uncaught exception: TypeError: can't convert undefined to object :
DBCollection.prototype.updateOne@src/mongo/shell/crud_api.js:558:20
@(shell):1:1
> db.movies.find({"year":{$lt:2000},{title:1}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:34
> db.movies.find({"year":{$lt:2000},{title:1}})
























































