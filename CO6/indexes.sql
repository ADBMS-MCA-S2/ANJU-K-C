use colleges
switched to db colleges
> db.createCollection("college")
{ "ok" : 1 }
> db.college.insert({"name":"anju","regno":102,"marks":[{"maths":90,"physics":85,"chemistry":84}]})
WriteResult({ "nInserted" : 1 })
> db.college.insert({"name":"sona","regno":103,"marks":[{"maths":94,"physics":75,"chemistry":94}]})
WriteResult({ "nInserted" : 1 })
> db.college.insert({"name":"raichel","regno":104,"marks":[{"maths":96,"physics":85,"chemistry":94}]})
WriteResult({ "nInserted" : 1 })

> db.college.getIndexes()
[ { "v" : 2, "key" : { "_id" : 1 }, "name" : "_id_" } ]
> db.college.createIndex({"regno":1})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}
//single field index

> db.college.getIndexes()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "regno" : 1
                },
                "name" : "regno_1"
        }
]
>
//compound indexes
> db.college.createIndex({"regno":1},{"name":"anju"})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
        
//multiple indexes
 db.college.createIndex({"mark.maths":1})
{
        "numIndexesBefore" : 2,
        "numIndexesAfter" : 3,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}
>db.college.getIndexes()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "regno" : 1
                },
                "name" : "anju"
        },
        {
                "v" : 2,
                "key" : {
                        "mark.maths" : 1
                },
                "name" : "mark.maths_1"
        }
]
// text indexes//
> db.createCollection("comment")
{ "ok" : 1 }
> db.comment.insert({"name":"anju","post":"hai nandu"})
WriteResult({ "nInserted" : 1 })
> db.comment.insert({"name":"nandu","post":"anjukcee"})
WriteResult({ "nInserted" : 1 })

