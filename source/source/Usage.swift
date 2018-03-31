
let firstBuilder = FirstBuilder()
let secondBuilder = SecondBuilder()

var director = ConnectionDirector(connectionBuilder: firstBuilder)
director.constructConnection()
var connection = director.connection

print(connection.urlString)//firsturl.com
print(connection.username)//firstUsername
print(connection.password)//firstPassword

director = ConnectionDirector(connectionBuilder: secondBuilder)
director.constructConnection()
connection = director.connection

print(connection.urlString)//secondurl.com
print(connection.username)//secondUsername
print(connection.password)//secondPassword
