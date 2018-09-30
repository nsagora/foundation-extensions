import Foundation
import CoreGraphics

public extension CGRect {

    /**
     Calculates the center `CGPoint` of the receiver.

     - returns: an `CGPoint`, representing the center of the rect.
     */
    public var center: CGPoint {
        let centerXOffet = width / 2
        let centerYOffset = height / 2
        return CGPoint(x: origin.x + centerXOffet, y: origin.y + centerYOffset)
    }
}
