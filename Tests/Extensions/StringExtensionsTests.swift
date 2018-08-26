import XCTest
import FoundationExtensions

class StringExtensionsTests: XCTestCase { }

// MARK: - Factory Methods

extension StringExtensionsTests {

    func test_empty_returnsAnEmptyString() {
        // Arrange
        // Act
        let sut: String = .empty

        // Assert
        XCTAssertEqual(sut, "")
    }
}

// MARK: - Truncation

extension StringExtensionsTests {

    func test_truncated_returnsANewStringWithoutTrailingCharacters() {
        // Arrange
        let input = "abcdefghijklmnopqrstxyz"
        let expected = "abcd"

        // Act
        let sut = input.truncated(to: 4)

        // Assert
        XCTAssertEqual(sut, expected)
    }

    func test_truncated_returnsANewStringWithTrailingCharacters() {
        // Arrange
        let input = "abcdefghijklmnopqrstxyz"
        let expected = "abcd..."

        // Act
        let sut = input.truncated(to: 7, trailing: "...")

        // Assert
        XCTAssertEqual(sut, expected)
    }

    func test_truncated_returnsTheInitialString() {
        // Arrange
        let input = "abcd"
        let expected = "abcd"

        // Act
        let sut = input.truncated(to: 4, trailing: "...")

        // Assert
        XCTAssertEqual(sut, expected)
    }

    func test_truncate() {
        // Arrange
        var sut = "abcdefghijklmnopqrstxyz"
        let expected = "abcd"

        // Act
        sut.truncate(to: 4)

        // Assert
        XCTAssertEqual(sut, expected)
    }
}

// MARK: - Capitalization

extension StringExtensionsTests {

    func test_capitalizedFirstLetter() {
        // Arrange
        let input = "abcd"
        let expected = "Abcd"

        // Act
        let sut = input.capitalizedFirstLetter()

        // Assert
        XCTAssertEqual(sut, expected)
    }

    func test_capitalizeFirstLetter() {
        // Arrange
        var sut = "abcd"
        let expected = "Abcd"

        // Act
        sut.capitalizeFirstLetter()

        // Assert
        XCTAssertEqual(sut, expected)
    }
}

// MARK: - Trimming

extension StringExtensionsTests {

    func test_trimmedWhiteSpacesAndNewLines_returnsAStringWithoutNewLine() {
        // Arrange
        let input = "abcd\n"
        let expected = "abcd"

        // Act
        let sut = input.trimmedWhiteSpacesAndNewLines()

        // Assert
        XCTAssertEqual(sut, expected)
    }

    func test_trimmedWhiteSpacesAndNewLines_returnsAStringWithoutSpaces() {
        // Arrange
        let input = "abcd  "
        let expected = "abcd"

        // Act
        let sut = input.trimmedWhiteSpacesAndNewLines()

        // Assert
        XCTAssertEqual(sut, expected)
    }

    func test_trimWhiteSpacesAndNewLines() {
        // Arrange
        var sut = "abcd  "
        let expected = "abcd"

        // Act
        sut.trimWhiteSpacesAndNewLines()

        // Assert
        XCTAssertEqual(sut, expected)
    }

    func test_trimmedNewLines_returnsAStringWithoutNewLine() {
        // Arrange
        let input = "abcd\n"
        let expected = "abcd"

        // Act
        let sut = input.trimmedNewLines()

        // Assert
        XCTAssertEqual(sut, expected)
    }

    func test_trimNewLines() {
        // Arrange
        var sut = "abcd\n"
        let expected = "abcd"

        // Act
        sut.trimNewLines()

        // Assert
        XCTAssertEqual(sut, expected)
    }
}

// MARK: - Digestion

extension StringExtensionsTests {

    func test_sha1() {
        // Arrange
        let input = "abcdefghijklmnopqrstxyz"
        let expacted = "796677af87a35898e20ff6ec67909d8bc5a8a034"

        // Act
        let sut = input.sha1()

        // Assert
        XCTAssertEqual(sut, expacted)
    }

    func test_sha256() {
        // Arrange
        let input = "abcdefghijklmnopqrstxyz"
        let expacted = "b5d9fe29a01d737609042b50de726f99f65d52a75c6c587257db9b91a9af4fb9"

        // Act
        let sut = input.sha256()

        // Assert
        XCTAssertEqual(sut, expacted)
    }

    func test_md5() {
        // Arrange
        let input = "abcdefghijklmnopqrstxyz"
        let expacted = "9c41763952c422409dcbacf43cfd9064"

        // Act
        let sut = input.md5()

        // Assert
        XCTAssertEqual(sut, expacted)
    }
}
