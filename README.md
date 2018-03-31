
Builder Design Pattern
========================================
[Ivelin Tsankov](http://ivelintsankov.com/builder-design-pattern/)



```swift


//Product
class Connection {
    var urlString = ""
    var username = ""
    var password = ""
}

//Abstract Builder
protocol ConnectionBuilder {
    var connection: Connection {get set}
    
    func buildUrlString()
    func buildUsername()
    func buildPassword()
}

//ConcreteBuilder 1
class FirstBuilder: ConnectionBuilder {
    var connection = Connection()
    
    func buildUrlString() {
        connection.urlString = "firsturl.com"
    }
    
    func buildUsername() {
        connection.username = "firstUsername"
    }
    
    func buildPassword() {
        connection.password = "firstPassword"
    }
}

//ConcreteBuilder 2
class SecondBuilder: ConnectionBuilder {
    var connection = Connection()
    
    func buildUrlString() {
        connection.urlString = "secondurl.com"
    }
    
    func buildUsername() {
        connection.username = "secondUsername"
    }
    
    func buildPassword() {
        connection.password = "secondPassword"
    }
}

// Director
class ConnectionDirector {
    let connectionBuilder: ConnectionBuilder
    let connection: Connection
    
    init(connectionBuilder: ConnectionBuilder) {
        self.connectionBuilder = connectionBuilder
        self.connection = connectionBuilder.connection
    }
    
    func constructConnection() {
        connectionBuilder.buildUrlString()
        connectionBuilder.buildUsername()
        connectionBuilder.buildPassword()
    }
}

//Usage
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
```

 
 Info
 ====
 
 [Ivelin Tsankov](http://ivelintsankov.com/builder-design-pattern/)
 
 
```swift

