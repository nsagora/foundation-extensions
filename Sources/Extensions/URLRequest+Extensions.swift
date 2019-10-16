import Foundation

extension URLRequest {

    public mutating func authenticated(withUsername username: String, andPassword password: String) {

        let authString = "\(username):\(password)"
        let authData = authString.data(using: .ascii, allowLossyConversion: true)!
        let base64 = authData.base64EncodedString(options: .endLineWithLineFeed)

        let authValue = "Basic \(base64)"

        addValue(authValue, forHTTPHeaderField: "Authorization")
    }
}
