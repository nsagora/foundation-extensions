import XCTest
import FoundationExtensions

class UserDefaultsExtensionsTests: XCTestCase {

    let sut = UserDefaults.standard

    func test_genericSubscriptGetter() {
        // Arrange
        let firstInput: Int = 1
        let secondInput: String = "2"

        // Act
        sut["first"] = firstInput
        sut["second"] = secondInput

        let firstOutput: Int? = sut["first"]
        let secondOutput: String? = sut["second"]

        // Assert
        XCTAssertEqual(firstOutput, firstInput)
        XCTAssertEqual(secondOutput, secondOutput)
    }

    func test_genericSubscriptSetter() {
        // Arrange
        let firstInput: Int = 1
        let secondInput: Int? = nil

        // Act
        sut["input"] = firstInput
        let firstOutput: Int? = sut["input"]

        sut["input"] = secondInput
        let secondOutput: Int? = sut["input"]


        // Assert
        XCTAssertEqual(firstOutput, firstInput)
        XCTAssertEqual(secondOutput, nil)
    }

    func test_valueForKeyWithDefault_WhenWeHaveAValue() {
        // Arrange
        let input: Int = 1
        let fallback: Int = 2

        // Act
        sut["input"] = input
        let output: Int? = sut.value(forKey: "input", withDefault: fallback)

        // Assert
        XCTAssertEqual(output, input)
    }

    func test_valueForKeyWithDefault_WhenWeDontHaveAValue() {
        // Arrange
        let fallback: Int = 2

        // Act
        let output: Int? = sut.value(forKey: "input", withDefault: fallback)

        // Assert
        XCTAssertEqual(output, fallback)
    }
}
