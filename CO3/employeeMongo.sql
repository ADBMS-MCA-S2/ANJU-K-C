
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

db.employee_details.updateOne({"ename":"Anju"},{$inc:{"salary":5000}})
db.employee_details.find({"desig":"developer"})
db.employee_details.find({"desig":"developer"}).pretty()
db.employee_details.find({"ename":"rahul"},{"salary":1}).pretty()
db.employee_details.find({},{"address.city":1}).pretty()


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
db.employees.remove({"ename":"Anjana"})
 db.employee_details.deleteOne({"ename":"Anjana"})

