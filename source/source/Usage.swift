
let firstBuilder = FirstBuilder()
let secondBuilder = SecondBuilder()

var director = ConnectionDirector(connectionBuilder: firstBuilder)
director.constructConnection()
var connection = director.connection

director = ConnectionDirector(connectionBuilder: secondBuilder)
director.constructConnection()
connection = director.connection
