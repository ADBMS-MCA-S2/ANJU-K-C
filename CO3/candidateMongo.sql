use candidate
switched to db candidate
> db.createCollection("details")
{ "ok" : 1 }
> db.details.insert({"name":"anju","age":30,"gender":"female","amount":40000})
WriteResult({ "nInserted" : 1 })
> db.details.insert({"name":"Raji","age":26,"gender":"female","amount":30000})
WriteResult({ "nInserted" : 1 })
> db.details.insert({"name":"Anu","age":25,"gender":"male","amount":50000})
WriteResult({ "nInserted" : 1 })
> db.details.insert({"name":"Sreejith","age":32,"gender":"male","amount":150000})
WriteResult({ "nInserted" : 1 })
> db.details.insert({"name":"Aswathy","age":22,"gender":"female","amount":60000})
WriteResult({ "nInserted" : 1 })
> db.details.insert({"name":"Neena","age":23,"gender":"female","amount":70000})
WriteResult({ "nInserted" : 1 })
> db.details.insert({"name":"Naveen","age":21,"gender":"male","amount":70000})
WriteResult({ "nInserted" : 1 })
> db.details.insert({"name":"Dwany","age":21,"gender":"female","amount":70000})
WriteResult({ "nInserted" : 1 })
> db.details.find({$or:[{"gender":"male"},{"age":{$lt:25}}])
... ^C

> db.details.find({$or:[{"gender":"male"},{"age":{$lt:25}}]})
{ "_id" : ObjectId("628b40c58839da6bc8736543"), "name" : "Anu", "age" : 25, "gender" : "male", "amount" : 50000 }
{ "_id" : ObjectId("628b40da8839da6bc8736544"), "name" : "Sreejith", "age" : 32, "gender" : "male", "amount" : 150000 }
{ "_id" : ObjectId("628b40f78839da6bc8736545"), "name" : "Aswathy", "age" : 22, "gender" : "female", "amount" : 60000 }
{ "_id" : ObjectId("628b410c8839da6bc8736546"), "name" : "Neena", "age" : 23, "gender" : "female", "amount" : 70000 }
{ "_id" : ObjectId("628b41248839da6bc8736547"), "name" : "Naveen", "age" : 21, "gender" : "male", "amount" : 70000 }
{ "_id" : ObjectId("628b41508839da6bc8736548"), "name" : "Dwany", "age" : 21, "gender" : "female", "amount" : 70000 }
> db.details.aggregate([{$group:{_id:"gender",total amount':{$sum:'$amount'}}}])
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:50
> db.details.aggregate([{$group:{_id:"$gender",total amount':{$sum:'$amount'}}}])
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:51
> db.details.aggregate([{$group:{_id:"$gender","total amount":{$sum:'$amount'}}}])
{ "_id" : "male", "total amount" : 270000 }
{ "_id" : "female", "total amount" : 270000 }
>> db.details.aggregate([{$match:{"age":{$lt:25}}},{$group:{_id:"$gender","total amount":{$avg:'$amount'}}}])
{ "_id" : "male", "total amount" : 70000 }
{ "_id" : "female", "total amount" : 66666.66666666667 }
>




