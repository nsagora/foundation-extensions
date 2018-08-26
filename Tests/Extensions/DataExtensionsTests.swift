import XCTest
import CommonCrypto
import FoundationExtensions

class DataExtensionsTests: XCTestCase { }

// MARK: - Digestion

extension DataExtensionsTests {

    func test_sha1() {
        // Arrange
        let input = "abcdefghijklmnopqrstxyz".data(using: .utf8)!
        let expacted = "796677af87a35898e20ff6ec67909d8bc5a8a034"

        // Act
        let sut = input.sha1()

        // Assert
        XCTAssertEqual(sut, expacted)
    }

    func test_sha256() {
        // Arrange
        let input = "abcdefghijklmnopqrstxyz".data(using: .utf8)!
        let expacted = "b5d9fe29a01d737609042b50de726f99f65d52a75c6c587257db9b91a9af4fb9"

        // Act
        let sut = input.sha256()

        // Assert
        XCTAssertEqual(sut, expacted)
    }

    func test_md5() {
        // Arrange
        let input = "abcdefghijklmnopqrstxyz".data(using: .utf8)!
        let expacted = "9c41763952c422409dcbacf43cfd9064"

        // Act
        let sut = input.md5()

        // Assert
        XCTAssertEqual(sut, expacted)
    }
}

// MARK: - Hash Calculator

extension DataExtensionsTests {

    func test_hashCalculator() {
        // Arrange
        let sut = Data.HashCalculator(algorithm: CC_MD4, legth: CC_MD4_DIGEST_LENGTH)
        let input = "abcdefghijklmnopqrstxyz".data(using: .utf8)!
        let expacted = "2a85c527cdde978bcef0efe1eea0aa52"

        // Act
        let hash = sut.digest(data: input)

        // Assert
        XCTAssertEqual(hash, expacted)
    }
}
