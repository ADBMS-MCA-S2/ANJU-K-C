 show dbs
admin     0.000GB
college   0.000GB
config    0.000GB
employee  0.000GB
local     0.000GB
student   0.000GB
> use employee
switched to db employee
> db.employee.find()
> db.employee_details.find()
>db.employee_details.insert("eid" : 101, "ename" : "Raji", "dept" : "MCA", "desig" : "Asst.prof", "salary" : 100000, "yoj" : 2012, "adress" : { "dno" : 122, "street" : "kadapakada", "locality" : "junction", "city" : "kollam" }, "age" : 30 })
>db.employee_details.insert( "eid" : 102, "ename" : "Anjana", "dept" : "python", "desig" : "developer", "salary" : 60000, "yoj" : 2015, "adress" : { "dno" : 123, "street" : "kulathoor", "locality" : "signal jn", "city" : "tvm" }, "age" : 30 })
>db.employee_details.insert("eid" : 102, "ename" : "Rahul", "dept" : "python", "desig" : "designer", "salary" : 70000, "adress" : { "dno" : 126, "street" : "pala", "locality" : "kurishpalli", "city" : "kottayam" }, "age" : 30 })
>db.employee_details.insert("eid" : 103, "ename" : "Anju", "dept" : "java", "desig" : "designer", "salary" : 75000, "yoj" : 2022, "adress" : { "dno" : 127, "street" : "koickal bhagom", "locality" : "kallada", "city" : "kollam" }, "age" : 30 })
> db.employee_details.find().pretty()
{
        "_id" : ObjectId("62821996763ff72030f11baa"),
        "eid" : 101,
        "ename" : "Raji",
        "dept" : "MCA",
        "desig" : "Asst.prof",
        "salary" : 100000,
        "yoj" : 2012,
        "adress" : {
                "dno" : 122,
                "street" : "kadapakada",
                "locality" : "junction",
                "city" : "kollam"
        },
        "age" : 30,
        "project" : [
                10
        ]
}
{
        "_id" : ObjectId("62821b65763ff72030f11bab"),
        "eid" : 102,
        "ename" : "Anjana",
        "dept" : "python",
        "desig" : "developer",
        "salary" : 60000,
        "yoj" : 2015,
        "adress" : {
                "dno" : 123,
                "street" : "kulathoor",
                "locality" : "signal jn",
                "city" : "tvm"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821bed763ff72030f11bac"),
        "eid" : 102,
        "ename" : "Rahul",
        "dept" : "python",
        "desig" : "designer",
        "salary" : 70000,
        "adress" : {
                "dno" : 126,
                "street" : "pala",
                "locality" : "kurishpalli",
                "city" : "kottayam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821ccc763ff72030f11bad"),
        "eid" : 103,
        "ename" : "Anju",
        "dept" : "java",
        "desig" : "designer",
        "salary" : 75000,
        "yoj" : 2022,
        "adress" : {
                "dno" : 127,
                "street" : "koickal bhagom",
                "locality" : "kallada",
                "city" : "kollam"
        },
        "age" : 30,
        "project" : [ ]

>db.employee_details.updateOne({"ename":"anju"},{$inc:{"salary":10000}})
>db.employee_details.find({"desig":"developer"})
>db.employee_details.find({"desig":"developer"}).pretty()
>db.employee_details.find({"ename":"rahul"},{"salary":1}).pretty()
>db.employee_details.find({},{"address.city":1}).pretty()

> db.employee_details.updateMany({"eid":103},{$pull:{"project":[20,40]}})
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 0 }
> db.employee_details.find().pretty()
{
        "_id" : ObjectId("62821996763ff72030f11baa"),
        "eid" : 101,
        "ename" : "Raji",
        "dept" : "MCA",
        "desig" : "Asst.prof",
        "salary" : 100000,
        "yoj" : 2012,
        "adress" : {
                "dno" : 122,
                "street" : "kadapakada",
                "locality" : "junction",
                "city" : "kollam"
        },
        "age" : 30,
        "project" : [
                10
        ]
}
{
        "_id" : ObjectId("62821b65763ff72030f11bab"),
        "eid" : 102,
        "ename" : "Anjana",
        "dept" : "python",
        "desig" : "developer",
        "salary" : 60000,
        "yoj" : 2015,
        "adress" : {
                "dno" : 123,
                "street" : "kulathoor",
                "locality" : "signal jn",
                "city" : "tvm"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821bed763ff72030f11bac"),
        "eid" : 102,
        "ename" : "Rahul",
        "dept" : "python",
        "desig" : "designer",
        "salary" : 70000,
        "adress" : {
                "dno" : 126,
                "street" : "pala",
                "locality" : "kurishpalli",
                "city" : "kottayam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821ccc763ff72030f11bad"),
        "eid" : 103,
        "ename" : "Anju",
        "dept" : "java",
        "desig" : "designer",
        "salary" : 75000,
        "yoj" : 2022,
        "adress" : {
                "dno" : 127,
                "street" : "koickal bhagom",
                "locality" : "kallada",
                "city" : "kollam"
        },
        "age" : 30,
        "project" : [ ]
}













 db.employee_details.updateMany({"eid":101},{$push:{"project":10}})
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }
> db.employee_details.find()
{ "_id" : ObjectId("62821996763ff72030f11baa"), "eid" : 101, "ename" : "Raji", "dept" : "MCA", "desig" : "Asst.prof", "salary" : 100000, "yoj" : 2012, "adress" : { "dno" : 122, "street" : "kadapakada", "locality" : "junction", "city" : "kollam" }, "age" : 30, "project" : [ 10 ] }
{ "_id" : ObjectId("62821b65763ff72030f11bab"), "eid" : 102, "ename" : "Anjana", "dept" : "python", "desig" : "developer", "salary" : 60000, "yoj" : 2015, "adress" : { "dno" : 123, "street" : "kulathoor", "locality" : "signal jn", "city" : "tvm" }, "age" : 30 }
{ "_id" : ObjectId("62821bed763ff72030f11bac"), "eid" : 102, "ename" : "Rahul", "dept" : "python", "desig" : "designer", "salary" : 70000, "adress" : { "dno" : 126, "street" : "pala", "locality" : "kurishpalli", "city" : "kottayam" }, "age" : 30 }
{ "_id" : ObjectId("62821ccc763ff72030f11bad"), "eid" : 103, "ename" : "Anju", "dept" : "java", "desig" : "designer", "salary" : 75000, "yoj" : 2022, "adress" : { "dno" : 127, "street" : "koickal bhagom", "locality" : "kallada", "city" : "kollam" }, "age" : 30 }
> db.employee_details.find().pretty()
{
        "_id" : ObjectId("62821996763ff72030f11baa"),
        "eid" : 101,
        "ename" : "Raji",
        "dept" : "MCA",
        "desig" : "Asst.prof",
        "salary" : 100000,
        "yoj" : 2012,
        "adress" : {
                "dno" : 122,
                "street" : "kadapakada",
                "locality" : "junction",
                "city" : "kollam"
        },
        "age" : 30,
        "project" : [
                10
        ]
}
{
        "_id" : ObjectId("62821b65763ff72030f11bab"),
        "eid" : 102,
        "ename" : "Anjana",
        "dept" : "python",
        "desig" : "developer",
        "salary" : 60000,
        "yoj" : 2015,
        "adress" : {
                "dno" : 123,
                "street" : "kulathoor",
                "locality" : "signal jn",
                "city" : "tvm"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821bed763ff72030f11bac"),
        "eid" : 102,
        "ename" : "Rahul",
        "dept" : "python",
        "desig" : "designer",
        "salary" : 70000,
        "adress" : {
                "dno" : 126,
                "street" : "pala",
                "locality" : "kurishpalli",
                "city" : "kottayam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821ccc763ff72030f11bad"),
        "eid" : 103,
        "ename" : "Anju",
        "dept" : "java",
        "desig" : "designer",
        "salary" : 75000,
        "yoj" : 2022,
        "adress" : {
                "dno" : 127,
                "street" : "koickal bhagom",
                "locality" : "kallada",
                "city" : "kollam"
        },
        "age" : 30,
        "project" : [ ]
}
> db.employee_details.updateMany({"eid":103},{$addToSet:{"project":[20,40]}})
>db.employee_details.find({'ename':{$regex:"ul"}}).pretty()
{
        "_id" : ObjectId("62821bed763ff72030f11bac"),
        "eid" : 102,
        "ename" : "Rahul",
        "dept" : "python",
        "desig" : "designer",
        "salary" : 70000,
        "adress" : {
                "dno" : 126,
                "street" : "pala",
                "locality" : "kurishpalli",
                "city" : "kottayam"
        },
        "age" : 30
}
>
> db.employee_details.find({'ename':{$regex:"^a"}},{"ename":1}).pretty()
> db.employee_details.find({"ename":{$regex:"^a"}},{"ename":1}).pretty()
> db.employee_details.find({"ename":{$regex:"^A"}},{"ename":1}).pretty()
{ "_id" : ObjectId("62821b65763ff72030f11bab"), "ename" : "Anjana" }
{ "_id" : ObjectId("62821ccc763ff72030f11bad"), "ename" : "Anju" }
> db.employee_details.find({"ename":{$regex:"l$"}},{"ename":1}).pretty()
{ "_id" : ObjectId("62821bed763ff72030f11bac"), "ename" : "Rahul" }
>
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

Q5)Display the details of female students [fname,lname,grade,mark,contact] who achieved a
mark more than 90.

db.studlist.find({"gender":"female","mark":{$gt:90}}).pretty()
{
        "_id" : ObjectId("628dec77ad4155a2fa309de0"),
        "name" : {
                "fname" : "Leni",
                "lname" : "kunjumon"
        },
        "gender" : "female",
        "contact" : {
                "House name" : "kunjumon",
                "street" : "kallada",
                "district" : "kollam",
                "mob" : 9614763765
        },
        "department" : "Mech",
        "mark" : 98,
        "grade" : "A+"
}
{
        "_id" : ObjectId("628dee3bad4155a2fa309de3"),
        "name" : {
                "fname" : "Feba",
                "lname" : "george"
        },
        "gender" : "female",
        "contact" : {
                "House name" : "feby villa",
                "street" : "kadambanad",
                "district" : "kollam",
                "mob" : 9605893765
        },
        "department" : "MCA",
        "mark" : 98,
        "grade" : "A"
}

Q6). Display the details of students who secured mark, more than 80 but less than 90.



db.studlist.find({"mark":{$gt:80,$lt:90}}).pretty()
{
        "_id" : ObjectId("628ded1fad4155a2fa309de1"),
        "name" : {
                "fname" : "Rahul",
                "lname" : "R"
        },
        "gender" : "male",
        "contact" : {
                "House name" : "revathy",
                "street" : "pothencode",
                "district" : "trivandrum",
                "mob" : 9605763765
        },
        "department" : "MCA",
        "mark" : 85,
        "grade" : "A"
}
{
        "_id" : ObjectId("628ded74ad4155a2fa309de2"),
        "name" : {
                "fname" : "Vishnu",
                "lname" : "Lal"
        },
        "gender" : "male",
        "contact" : {
                "House name" : "vishnu bhavan",
                "street" : "kulathoor",
                "district" : "trivandrum",
                "mob" : 9605563765
        },
        "department" : "mech",
        "mark" : 89,
        "grade" : "A"
}
{
        "_id" : ObjectId("628deec0ad4155a2fa309de4"),
        "name" : {
                "fname" : "Rino",
                "lname" : "sunny"
        },
        "gender" : "male",
        "contact" : {
                "House name" : "Rino bhavan",
                "street" : "cherai",
                "district" : "eranakulam",
                "mob" : 9605893768
        },
        "department" : "mech",
        "mark" : 82,
        "grade" : "A"
}
>
