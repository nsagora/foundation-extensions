import XCTest
import FoundationExtensions

class CGRectExtensionsTests: XCTestCase {

    func test_center_forRectAtPointZeroZero() {

        // Arrange
        let sut = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100))
        let expected = CGPoint(x: 50, y: 50)

        // Act
        let center = sut.center

        // Assert
        XCTAssertEqual(center, expected)
    }

    func test_center_forRectAtTenTen() {

        // Arrange
        let sut = CGRect(origin: CGPoint(x: 10, y: 10), size: CGSize(width: 100, height: 100))
        let expected = CGPoint(x: 60, y: 60)

        // Act
        let center = sut.center

        // Assert
        XCTAssertEqual(center, expected)
    }
}
