import Foundation
import CommonCrypto

// MARK: - CHECKSUM

public extension Data {

    public func sha1() -> String {
        let digest = HashCalculator(algorithm: CC_SHA1, legth: CC_SHA1_DIGEST_LENGTH)
        return digest.digest(data: self)
    }

    public func sha256() -> String {
        let digest = HashCalculator(algorithm: CC_SHA256, legth: CC_SHA256_DIGEST_LENGTH)
        return digest.digest(data: self)
    }

    public func md5() -> String {
        let digest = HashCalculator(algorithm: CC_MD5, legth: CC_MD5_DIGEST_LENGTH)
        return digest.digest(data: self)
    }
}

public extension Data {
    /**
     Adapted from http://stackoverflow.com/questions/25761344/how-to-crypt-string-to-sha1-with-swift
     */
    public class HashCalculator {

        public typealias HashAlgorithm = (UnsafeRawPointer?, CC_LONG, UnsafeMutablePointer<UInt8>?) -> UnsafeMutablePointer<UInt8>?
        public typealias HashLenght = Int32

        private var legth: HashLenght
        private var algorithm: HashAlgorithm

        public init(algorithm: @escaping HashAlgorithm, legth: HashLenght) {
            self.algorithm = algorithm
            self.legth = legth
        }

        public func digest(data: Data) -> String {
            var digest = [UInt8](repeating: 0, count: Int(legth))
            data.withUnsafeBytes {
                _ = self.algorithm($0, CC_LONG(data.count), &digest)
            }
            let hexBytes = digest.map { String(format: "%02hhx", $0) }
            return hexBytes.joined()
        }
    }
}
