
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
