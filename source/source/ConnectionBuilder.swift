
//Abstract Builder
protocol ConnectionBuilder {
    var connection: Connection {get set}
    
    func buildUrlString()
    func buildUsername()
    func buildPassword()
}
