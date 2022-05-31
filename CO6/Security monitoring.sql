Microsoft Windows [Version 10.0.15063]
(c) 2017 Microsoft Corporation. All rights reserved.

C:\Windows\system32>cd C:\Program Files\MongoDB\Tools\100\bin

MONGOSHELL:
> show dbs
admin      0.000GB
candidate  0.000GB
college    0.000GB
config     0.000GB
employee   0.000GB
local      0.000GB
student    0.000GB

ADMIN:

C:\Program Files\MongoDB\Tools\100\bin>mongodump
2022-05-31T10:57:46.947+0530    writing admin.system.version to dump\admin\system.version.bson
2022-05-31T10:57:46.951+0530    done dumping admin.system.version (1 document)
2022-05-31T10:57:46.951+0530    writing college.college to dump\college\college.bson
2022-05-31T10:57:46.973+0530    done dumping college.college (2 documents)
2022-05-31T10:57:46.973+0530    writing employee.employee_details to dump\employee\employee_details.bson
2022-05-31T10:57:47.013+0530    done dumping employee.employee_details (3 documents)
2022-05-31T10:57:47.013+0530    writing student.student_details to dump\student\student_details.bson
2022-05-31T10:57:47.026+0530    done dumping student.student_details (0 documents)
2022-05-31T10:57:47.257+0530    writing student.student to dump\student\student.bson
2022-05-31T10:57:47.258+0530    writing college.studlist to dump\college\studlist.bson
2022-05-31T10:57:47.258+0530    writing candidate.details to dump\candidate\details.bson
2022-05-31T10:57:47.261+0530    done dumping college.studlist (8 documents)
2022-05-31T10:57:47.290+0530    done dumping student.student (21 documents)
2022-05-31T10:57:47.328+0530    done dumping candidate.details (8 documents)


MONGOSHELL:
> use employee
switched to db employee
> db.dropDatabase()
{ "ok" : 1 }
//FOR BACKUP
ADMIN:


C:\Program Files\MongoDB\Tools\100\bin>mongorestore
2022-05-31T11:01:02.150+0530    using default 'dump' directory
2022-05-31T11:01:02.153+0530    preparing collections to restore from
2022-05-31T11:01:02.159+0530    reading metadata for college.studlist from dump\college\studlist.metadata.json
2022-05-31T11:01:02.159+0530    reading metadata for employee.employee_details from dump\employee\employee_details.metadata.json
2022-05-31T11:01:02.160+0530    reading metadata for student.student from dump\student\student.metadata.json
2022-05-31T11:01:02.160+0530    reading metadata for student.student_details from dump\student\student_details.metadata.json
2022-05-31T11:01:02.160+0530    reading metadata for candidate.details from dump\candidate\details.metadata.json
2022-05-31T11:01:02.160+0530    reading metadata for college.college from dump\college\college.metadata.json
2022-05-31T11:01:02.161+0530    restoring to existing collection student.student without dropping
2022-05-31T11:01:02.161+0530    restoring student.student from dump\student\student.bson
2022-05-31T11:01:02.161+0530    restoring to existing collection college.studlist without dropping
2022-05-31T11:01:02.162+0530    restoring college.studlist from dump\college\studlist.bson
2022-05-31T11:01:02.470+0530    restoring to existing collection candidate.details without dropping
2022-05-31T11:01:02.470+0530    restoring candidate.details from dump\candidate\details.bson
2022-05-31T11:01:02.471+0530    restoring employee.employee_details from dump\employee\employee_details.bson
2022-05-31T11:01:02.506+0530    finished restoring employee.employee_details (3 documents, 0 failures)
2022-05-31T11:01:02.506+0530    restoring to existing collection college.college without dropping
2022-05-31T11:01:02.506+0530    restoring college.college from dump\college\college.bson
2022-05-31T11:01:02.523+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628deb01ad4155a2fa309dde') }
2022-05-31T11:01:02.523+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628debc4ad4155a2fa309ddf') }
2022-05-31T11:01:02.523+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628dec77ad4155a2fa309de0') }
2022-05-31T11:01:02.523+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628ded1fad4155a2fa309de1') }
2022-05-31T11:01:02.523+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628ded74ad4155a2fa309de2') }
2022-05-31T11:01:02.523+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628dee3bad4155a2fa309de3') }
2022-05-31T11:01:02.523+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628deec0ad4155a2fa309de4') }
2022-05-31T11:01:02.524+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628def50ad4155a2fa309de5') }
2022-05-31T11:01:02.525+0530    finished restoring college.studlist (0 documents, 8 failures)
2022-05-31T11:01:02.531+0530    restoring to existing collection student.student_details without dropping
2022-05-31T11:01:02.532+0530    restoring student.student_details from dump\student\student_details.bson
2022-05-31T11:01:02.543+0530    finished restoring student.student_details (0 documents, 0 failures)
2022-05-31T11:01:02.551+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a4dc01c695b8dbbcdd97') }
2022-05-31T11:01:02.551+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a58a01c695b8dbbcdd98') }
2022-05-31T11:01:02.552+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a5d801c695b8dbbcdd99') }
2022-05-31T11:01:02.556+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a60801c695b8dbbcdd9a') }
2022-05-31T11:01:02.559+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a62d01c695b8dbbcdd9b') }
2022-05-31T11:01:02.563+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a68501c695b8dbbcdd9c') }
2022-05-31T11:01:02.564+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a71501c695b8dbbcdd9d') }
2022-05-31T11:01:02.565+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a74201c695b8dbbcdd9e') }
2022-05-31T11:01:02.566+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a76901c695b8dbbcdd9f') }
2022-05-31T11:01:02.567+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a82101c695b8dbbcdda0') }
2022-05-31T11:01:02.569+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a85f01c695b8dbbcdda1') }
2022-05-31T11:01:02.573+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a8e701c695b8dbbcdda2') }
2022-05-31T11:01:02.573+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a90a01c695b8dbbcdda3') }
2022-05-31T11:01:02.574+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a97b01c695b8dbbcdda4') }
2022-05-31T11:01:02.574+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a98401c695b8dbbcdda5') }
2022-05-31T11:01:02.574+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a98c01c695b8dbbcdda6') }
2022-05-31T11:01:02.575+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a99401c695b8dbbcdda7') }
2022-05-31T11:01:02.575+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a99b01c695b8dbbcdda8') }
2022-05-31T11:01:02.576+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a9a901c695b8dbbcdda9') }
2022-05-31T11:01:02.576+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a9b101c695b8dbbcddaa') }
2022-05-31T11:01:02.576+0530    continuing through error: E11000 duplicate key error collection: student.student index: _id_ dup key: { _id: ObjectId('6278a9de01c695b8dbbcddab') }
2022-05-31T11:01:02.576+0530    finished restoring student.student (0 documents, 21 failures)
2022-05-31T11:01:02.583+0530    continuing through error: E11000 duplicate key error collection: college.college index: _id_ dup key: { _id: ObjectId('626918dce2322e9f2b627ef6') }
2022-05-31T11:01:02.584+0530    continuing through error: E11000 duplicate key error collection: college.college index: _id_ dup key: { _id: ObjectId('62691e26e2322e9f2b627ef7') }
2022-05-31T11:01:02.584+0530    finished restoring college.college (0 documents, 2 failures)
2022-05-31T11:01:02.621+0530    continuing through error: E11000 duplicate key error collection: candidate.details index: _id_ dup key: { _id: ObjectId('628b40888839da6bc8736541') }
2022-05-31T11:01:02.621+0530    continuing through error: E11000 duplicate key error collection: candidate.details index: _id_ dup key: { _id: ObjectId('628b40ac8839da6bc8736542') }
2022-05-31T11:01:02.622+0530    continuing through error: E11000 duplicate key error collection: candidate.details index: _id_ dup key: { _id: ObjectId('628b40c58839da6bc8736543') }
2022-05-31T11:01:02.626+0530    continuing through error: E11000 duplicate key error collection: candidate.details index: _id_ dup key: { _id: ObjectId('628b40da8839da6bc8736544') }
2022-05-31T11:01:02.627+0530    continuing through error: E11000 duplicate key error collection: candidate.details index: _id_ dup key: { _id: ObjectId('628b40f78839da6bc8736545') }
2022-05-31T11:01:02.628+0530    continuing through error: E11000 duplicate key error collection: candidate.details index: _id_ dup key: { _id: ObjectId('628b410c8839da6bc8736546') }
2022-05-31T11:01:02.629+0530    continuing through error: E11000 duplicate key error collection: candidate.details index: _id_ dup key: { _id: ObjectId('628b41248839da6bc8736547') }
2022-05-31T11:01:02.629+0530    continuing through error: E11000 duplicate key error collection: candidate.details index: _id_ dup key: { _id: ObjectId('628b41508839da6bc8736548') }
2022-05-31T11:01:02.630+0530    finished restoring candidate.details (0 documents, 8 failures)
2022-05-31T11:01:02.636+0530    no indexes to restore for collection college.studlist
2022-05-31T11:01:02.636+0530    no indexes to restore for collection student.student_details
2022-05-31T11:01:02.637+0530    no indexes to restore for collection candidate.details
2022-05-31T11:01:02.637+0530    no indexes to restore for collection college.college
2022-05-31T11:01:02.638+0530    no indexes to restore for collection employee.employee_details
2022-05-31T11:01:02.638+0530    no indexes to restore for collection student.student
2022-05-31T11:01:02.638+0530    3 document(s) restored successfully. 39 document(s) failed to restore.
//THEN DELETE DUMP FOLDER IN C

ADMIN CMD:

C:\Program Files\MongoDB\Tools\100\bin>mongodump --db=employee
2022-05-31T11:05:12.196+0530    writing employee.employee_details to dump\employee\employee_details.bson
2022-05-31T11:05:12.197+0530    done dumping employee.employee_details (3 documents)

C:\Program Files\MongoDB\Tools\100\bin>mongodump --db=employee

C:\Program Files\MongoDB\Tools\100\bin>mongodump --db=employee dump/employee
2022-05-31T11:08:51.463+0530    error parsing command line options: error parsing positional arguments: provide only one MongoDB connection string. Connection strings must begin with mongodb:// or mongodb+srv:// schemes
2022-05-31T11:08:51.463+0530    try 'mongodump --help' for more information

C:\Program Files\MongoDB\Tools\100\bin>mongodump --db=employee dump/employee
2022-05-31T11:09:36.398+0530    error parsing command line options: error parsing positional arguments: provide only one MongoDB connection string. Connection strings must begin with mongodb:// or mongodb+srv:// schemes
2022-05-31T11:09:36.399+0530    try 'mongodump --help' for more information

C:\Program Files\MongoDB\Tools\100\bin>mongorestore --db=employee dump/employee
2022-05-31T11:10:34.944+0530    The --db and --collection flags are deprecated for this use-case; please use --nsInclude instead, i.e. with --nsInclude=${DATABASE}.${COLLECTION}
2022-05-31T11:10:34.947+0530    building a list of collections to restore from dump\employee dir
2022-05-31T11:10:34.955+0530    reading metadata for employee.employee_details from dump\employee\employee_details.metadata.json
2022-05-31T11:10:35.085+0530    restoring employee.employee_details from dump\employee\employee_details.bson
2022-05-31T11:10:35.109+0530    finished restoring employee.employee_details (3 documents, 0 failures)
2022-05-31T11:10:35.110+0530    no indexes to restore for collection employee.employee_details
2022-05-31T11:10:35.113+0530    3 document(s) restored successfully. 0 document(s) failed to restore.

C:\Program Files\MongoDB\Tools\100\bin>mondodump --db candidate --collection details
'mondodump' is not recognized as an internal or external command,
operable program or batch file.

C:\Program Files\MongoDB\Tools\100\bin>mongodump --db candidate --collection details
2022-05-31T11:15:08.617+0530    writing candidate.details to dump\candidate\details.bson
2022-05-31T11:15:08.620+0530    done dumping candidate.details (8 documents)

C:\Program Files\MongoDB\Tools\100\bin>mongorestore --db candidate --collection details dump/candidate/details/bson
2022-05-31T11:18:46.565+0530    The --db and --collection flags are deprecated for this use-case; please use --nsInclude instead, i.e. with --nsInclude=${DATABASE}.${COLLECTION}
2022-05-31T11:18:46.566+0530    Failed: mongorestore target 'dump\candidate\details\bson' invalid: CreateFile dump\candidate\details\bson: The system cannot find the path specified.
2022-05-31T11:18:46.567+0530    0 document(s) restored successfully. 0 document(s) failed to restore.

C:\Program Files\MongoDB\Tools\100\bin>mongorestore --db candidate --collection details dump/candidate/details.bson
2022-05-31T11:20:07.060+0530    checking for collection data in dump\candidate\details.bson
2022-05-31T11:20:07.063+0530    reading metadata for candidate.details from dump\candidate\details.metadata.json
2022-05-31T11:20:07.181+0530    restoring candidate.details from dump\candidate\details.bson
2022-05-31T11:20:07.243+0530    finished restoring candidate.details (8 documents, 0 failures)
2022-05-31T11:20:07.244+0530    no indexes to restore for collection candidate.details
2022-05-31T11:20:07.247+0530    8 document(s) restored successfully. 0 document(s) failed to restore.

C:\Program Files\MongoDB\Tools\100\bin>mongostat
insert query update delete getmore command dirty used flushes vsize  res qrw arw net_in net_out conn                time
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   242b   52.9k   17 May 31 11:23:44.477
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   111b   52.5k   17 May 31 11:23:45.480
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   112b   52.9k   17 May 31 11:23:46.475
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   111b   52.6k   17 May 31 11:23:47.476
    *0    *0     *0     *0       0     2|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   297b   53.1k   17 May 31 11:23:48.479
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   112b   52.8k   17 May 31 11:23:49.476
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   111b   52.5k   17 May 31 11:23:50.478
    *0    *0     *0     *0       0     2|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   167b   53.1k   17 May 31 11:23:51.476
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   111b   52.6k   17 May 31 11:23:52.477
    *0    *0     *0     *0       0     3|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   308b   53.4k   17 May 31 11:23:53.475
insert query update delete getmore command dirty used flushes vsize  res qrw arw net_in net_out conn                time
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   242b   52.9k   17 May 31 11:23:54.477
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   112b   52.7k   17 May 31 11:23:55.475
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   111b   52.5k   17 May 31 11:23:56.478
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   112b   52.8k   17 May 31 11:23:57.475
    *0    *0     *0     *0       0     2|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   296b   53.1k   17 May 31 11:23:58.479
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   112b   52.9k   17 May 31 11:23:59.475
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   112b   52.8k   17 May 31 11:24:00.472
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   111b   52.5k   17 May 31 11:24:01.475
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   166b   52.7k   17 May 31 11:24:02.480
    *0    *0     *0     *0       0     3|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   309b   53.5k   17 May 31 11:24:03.475
insert query update delete getmore command dirty used flushes vsize  res qrw arw net_in net_out conn                time
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   241b   52.8k   17 May 31 11:24:04.479
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   112b   52.9k   17 May 31 11:24:05.475
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   111b   52.6k   17 May 31 11:24:06.477
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.39G 130M 0|0 0|0   112b   52.7k   17 May 31 11:24:07.475
2022-05-31T11:24:07.617+0530    signal 'interrupt' received; forcefully terminating

C:\Program Files\MongoDB\Tools\100\bin>

MONGOSHELL:

 use employee
switched to db employee
> db.dropDatabase()
{ "ok" : 1 }
> show dbs
admin      0.000GB
candidate  0.000GB
college    0.000GB
config     0.000GB
local      0.000GB
student    0.000GB
> show collections
employee_details
> use candidate
switched to db candidate
> show collections
details
> use candidate
switched to db candidate
> db.details.drop()
true
> show collections
> show collections
> use candidate
switched to db candidate
> show collections
> show collections
details
>







