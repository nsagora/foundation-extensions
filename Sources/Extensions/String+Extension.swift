import Foundation

// MARK: - Factory Methods

extension String {

    public static var empty: String { return "" }
}

// MARK: - Truncation

extension String {

    public func truncated(to length: Int, trailing: String = .empty) -> String {
        guard count > length else { return self }

        let upToIndex = length - trailing.count - 1
        let endIndex = index(startIndex, offsetBy: upToIndex)

        return self[...endIndex] + trailing
    }

    public mutating func truncate(to length: Int, trailing: String = .empty) {
        self = truncated(to: length, trailing: trailing)
    }
}

// MARK: - Capitalization

extension String {

    public func capitalizedFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst()
    }

    public mutating func capitalizeFirstLetter() {
        self = capitalizedFirstLetter()
    }
}

// MARK: - Trimming

extension String {

    public func trimmedWhiteSpacesAndNewLines() -> String {
        return trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }

    public mutating func trimWhiteSpacesAndNewLines() {
        self = trimmedWhiteSpacesAndNewLines()
    }

    public func trimmedNewLines() -> String {
        return trimmingCharacters(in: CharacterSet.newlines)
    }

    public mutating func trimNewLines() {
        self = trimmedNewLines()
    }
}

// MARK: - CHECKSUM

extension String {

    public func sha1() -> String {
        let data = self.data(using: .utf8)!
        return data.sha1()
    }

    public func sha256() -> String {
        let data = self.data(using: .utf8)!
        return data.sha256()
    }

    public func md5() -> String {
        let data = self.data(using: .utf8)!
        return data.md5()
    }
}


