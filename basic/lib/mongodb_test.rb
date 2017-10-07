require 'rubygems'  # not necessary for Ruby 1.9
require 'mongo'

#An Mongo::Connection instance represents a connection to MongoDB. You use a Connection instance to obtain an Mongo:DB instance, which represents a named database. The database doesn't have to exist - if it doesn't, MongoDB will create it for you.

#You can optionally specify the MongoDB server address and port when connecting. The following example shows three ways to connect to the database "mydb" on the local machine:

#db = Mongo::Connection.new.db("mydb")
#db = Mongo::Connection.new("localhost").db("mydb")
#db = Mongo::Connection.new("localhost", 27017).db("mydb")


connection = Mongo::Connection.new # (optional host/port args)
connection.database_names.each { |name| puts name }
puts "-------------------------------------"
connection.database_info.each { |info| puts info.inspect}

#connection.drop_database('database_name')
puts "-------------------------------------"
db = connection.db("local")
coll = db.collection('test')
users = db.create_collection('users')

coll.insert('a' => 2)
coll.insert('b' => 3)
coll.insert('c' => 4)

db.collection_names.each { |name| puts name }

oh = BSON::OrderedHash['name' => 'txm', 'gender' => 'male']
oid = users.save(oh)
puts "oid:#{oid}"
puts users.find_one(oid)['name']


