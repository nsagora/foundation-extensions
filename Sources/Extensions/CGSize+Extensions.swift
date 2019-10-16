import Foundation
import CoreGraphics

extension CGSize {

    public func extended(by padding: CGSize) -> CGSize {
        var size = self

        size.width += padding.width
        size.height += padding.height

        return size
    }

    public mutating func extend(by padding: CGSize) {
        self = extended(by: padding)
    }

    public func size(toFit maxSize: CGSize) -> CGSize {

        var newWidth = maxSize.width
        var newHeight = maxSize.height

        if width > height {
            newHeight = height * newWidth / width
            if newHeight > maxSize.height {
                newHeight = maxSize.height
                newWidth = width * newHeight / height
            }
        } else {
            newWidth = width * newHeight / height
            if newWidth > maxSize.width {
                newWidth = maxSize.width
                newHeight = height * newWidth / width
            }
        }

        return CGSize(width: floor(newWidth), height: floor(newHeight))
    }
}
