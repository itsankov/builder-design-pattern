
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
