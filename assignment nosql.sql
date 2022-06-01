                          LAB ASSIGNMENT 6
                               NOSQL
Create a database named college and then create a collection named studlist.
Insert some values into it [You can use the data in test.json file].
Write a MongoDB Query to:
1. Display name (both fname and lname) and mark of all female students in MCA
department.
2. Display the details of student who secured highest mark in the course MCA
3. Display all male students who secured A+ grade.
4. Display the names of the top three students in Mechanical department.
5. Display the details of female students [fname,lname,grade,mark,contact] who achieved a
mark more than 90.
6. Display the details of students who secured mark, more than 80 but less than 90.
7. Display the details of students whose name starts with ‘V’
8. Display all students from Kollam
9. Display all students who does not belong to neither Kollam nor Thiruvananthapuram
10. Display all female students who belong to either Kollam or Thiruvananthapuram
              ******************************************************
use college
switched to db college
> show collections
college
> db.createCollection("studlist")
{ "ok" : 1 }
>db.studlist.insert({"name":{"fname":"Raji","lname":"SR"},"gender":"female","contact":{"House name":"pattaseril","street":"eastkallada","district":"kollam","mob":8680763765},"department":"MCA","mark":90,"grade":"A+"})
WriteResult({ "nInserted" : 1 })
 >db.studlist.insert({"name":{"fname":"Raji","lname":"SR"},"gender":"female","contact":{"House name":"pattaseril","street":"eastkallada","district":"kollam","mob":8680763765},"department":"MCA","mark":90,"grade":"A+"})
WriteResult({ "nInserted" : 1 })
>db.studlist.insert({"name":{"fname":"Varun","lname":"Dani"},"gender":"male","contact":{"House name":"dan villa","street":"nandhancode","district":"trivandrum","mob":8614763765},"department":"Mech","mark":92,"grade":"A+"})
WriteResult({ "nInserted" : 1 })
>db.studlist.insert({"name":{"fname":"Leni","lname":"kunjumon"},"gender":"female","contact":{"House name":"kunjumon","street":"kallada","district":"kollam","mob":9614763765},"department":"Mech","mark":98,"grade":"A+"})
WriteResult({ "nInserted" : 1 })
>db.studlist.insert({"name":{"fname":"Rahul","lname":"R"},"gender":"male","contact":{"House name":"revathy","street":"pothencode","district":"trivandrum","mob":9605763765},"department":"MCA","mark":85,"grade":"A"})
WriteResult({ "nInserted" : 1 })
>db.studlist.insert({"name":{"fname":"Vishnu","lname":"Lal"},"gender":"male","contact":{"House name":"vishnu bhavan","street":"kulathoor","district":"trivandrum","mob":9605563765},"department":"mech","mark":89,"grade":"A"})
WriteResult({ "nInserted" : 1 })
>db.studlist.insert({"name":{"fname":"Feba","lname":"george"},"gender":"female","contact":{"House name":"feby villa","street":"kadambanad","district":"kollam","mob":9605893765},"department":"MCA","mark":98,"grade":"A"})
WriteResult({ "nInserted" : 1 })
>db.studlist.insert({"name":{"fname":"Rino","lname":"sunny"},"gender":"male","contact":{"House name":"Rino bhavan","street":"cherai","district":"eranakulam","mob":9605893768},"department":"mech","mark":82,"grade":"A"})
WriteResult({ "nInserted" : 1 })
>db.studlist.insert({"name":{"fname":"Arun","lname":"thomas"},"gender":"male","contact":{"House name":"Arun bhavan","street":"thiruvalla","district":"kottayam","mob":9603393768},"department":"MCA","mark":95,"grade":"A+"})
WriteResult({ "nInserted" : 1 })
> db.studlist.find().pretty()
{
        "_id" : ObjectId("628deb01ad4155a2fa309dde"),
        "name" : {
                "fname" : "Raji",
                "lname" : "SR"
        },
        "gender" : "female",
        "contact" : {
                "House name" : "pattaseril",
                "street" : "eastkallada",
                "district" : "kollam",
                "mob" : 8680763765
        },
        "department" : "MCA",
        "mark" : 90,
        "grade" : "A+"
}
{
        "_id" : ObjectId("628debc4ad4155a2fa309ddf"),
        "name" : {
                "fname" : "Varun",
                "lname" : "Dani"
        },
        "gender" : "male",
        "contact" : {
                "House name" : "dan villa",
                "street" : "nandhancode",
                "district" : "trivandrum",
                "mob" : 8614763765
        },
        "department" : "Mech",
        "mark" : 92,
        "grade" : "A+"
}
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
{
        "_id" : ObjectId("628def50ad4155a2fa309de5"),
        "name" : {
                "fname" : "Arun",
                "lname" : "thomas"
        },
        "gender" : "male",
        "contact" : {
                "House name" : "Arun bhavan",
                "street" : "thiruvalla",
                "district" : "kottayam",
                "mob" : 9603393768
        },
        "department" : "MCA",
        "mark" : 95,
        "grade" : "A+"
}
Write a MongoDB Query to: 
//Q1) Display name (both fname and lname) and mark of all female students in MCA
department.
Query:
> db.studlist.find({"gender":"female","department":"MCA"},{"name":1,"mark":1}).pretty()
{
        "_id" : ObjectId("628deb01ad4155a2fa309dde"),
        "name" : {
                "fname" : "Raji",
                "lname" : "SR"
        },
        "mark" : 90
}
{
        "_id" : ObjectId("628dee3bad4155a2fa309de3"),
        "name" : {
                "fname" : "Feba",
                "lname" : "george"
        },
        "mark" : 98
}
Q2). Display the details of student who secured highest mark in the course MCA
Query:
 db.studlist.find({"department":"MCA"}).sort({"mark":-1}).limit(1).pretty()
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


Q3). Display all male students who secured A+ grade
Query:
db.studlist.find({"gender":"male","grade":"A+"}).pretty()
{
        "_id" : ObjectId("628debc4ad4155a2fa309ddf"),
        "name" : {
                "fname" : "Varun",
                "lname" : "Dani"
        },
        "gender" : "male",
        "contact" : {
                "House name" : "dan villa",
                "street" : "nandhancode",
                "district" : "trivandrum",
                "mob" : 8614763765
        },
        "department" : "Mech",
        "mark" : 92,
        "grade" : "A+"
}
{
        "_id" : ObjectId("628def50ad4155a2fa309de5"),
        "name" : {
                "fname" : "Arun",
                "lname" : "thomas"
        },
        "gender" : "male",
        "contact" : {
                "House name" : "Arun bhavan",
                "street" : "thiruvalla",
                "district" : "kottayam",
                "mob" : 9603393768
        },
        "department" : "MCA",
        "mark" : 95,
        "grade" : "A+"
}
>

Q4). Display the names of the top three students in Mechanical department.
Query:

i", "district" : "eranakulam", "mob" : 9605893768 }, "department" : "mech", "mark" : 82, "grade" : "A" }
> db.studlist.find({"department":"mech"}).sort({"mark":-1}).limit(3).pretty()
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

Q6). Display the details of students who secured mark, more than 80 but less than 90.

 db.studlist.find({$and:[{mark:{$gt:80}},{mark:{$lt:90}}]}).pretty()
{
        "_id" : ObjectId("6294c4bf6838d6de6cecf56e"),
        "name" : {
                "fname" : "vijay",
                "lname" : "kumar"
        },
        "gender" : "male",
        "contact" : {
                "House name" : "vijay nivas",
                "street" : "kulathoor",
                "district" : "trivandrum",
                "mob" : 9939856883
        },
        "department" : "mech",
        "mark" : 85,
        "grade" : "A"
}
{
        "_id" : ObjectId("6294c6ac6838d6de6cecf571"),
        "name" : {
                "fname" : "Rino",
                "lname" : "sunny"
        },
        "gender" : "male",
        "contact" : {
                "House name" : "rony villa",
                "street" : "cherai",
                "district" : "eranakulam",
                "mob" : 9129096883
        },
        "department" : "mech",
        "mark" : 82,
        "grade" : "A"
}
{
        "_id" : ObjectId("6294c7166838d6de6cecf572"),
        "name" : {
                "fname" : "arun",
                "lname" : "thomas"
        },
        "gender" : "male",
        "contact" : {
                "House name" : "arun nivas",
                "street" : "thiruvalla",
                "district" : "kottayam",
                "mob" : 9129094583
        },
        "department" : "mech",
        "mark" : 89,
        "grade" : "A"
}
Q7)7. Display the details of students whose name starts with ‘V’
 db.studlist.find({"name.fname":{$regex:"^V"}},{})
{ "_id" : ObjectId("628debc4ad4155a2fa309ddf"), "name" : { "fname" : "Varun", "lname" : "Dani" }, "gender" : "male", "contact" : { "House name" : "dan villa", "street" : "nandhancode", "district" : "trivandrum", "mob" : 8614763765 }, "department" : "Mech", "mark" : 92, "grade" : "A+" }
{ "_id" : ObjectId("628ded74ad4155a2fa309de2"), "name" : { "fname" : "Vishnu", "lname" : "Lal" }, "gender" : "male", "contact" : { "House name" : "vishnu bhavan", "street" : "kulathoor", "district" : "trivandrum", "mob" : 9605563765 }, "department" : "mech", "mark" : 89, "grade" : "A" }
>




