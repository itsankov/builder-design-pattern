
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
