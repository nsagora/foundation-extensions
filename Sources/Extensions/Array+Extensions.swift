import Foundation

extension Array {

    /**
        Makes an empty array of `Element` type.
    */
    public static var empty: [Element] {
        return [Element]()
    }
}

extension Array where Element: Hashable {

    public struct DeltaItems<Element> {
        public var addedItems: [Element] = []
        public var removedItems: [Element] = []
        public var addedIndexes: [Int] = []
        public var removedIndexes: [Int] = []
    }

    public func difference(of anOther: [Element]) -> DeltaItems<Element> {
        var deltaItems = DeltaItems<Element>()

        let (addedItems, removedItems) = self.getAddedAndRemovedItems(of: anOther)

        deltaItems.addedItems = addedItems
        deltaItems.removedItems = removedItems

        deltaItems.addedIndexes = addedItems.compactMap { anOther.index(of: $0) }
        deltaItems.removedIndexes = removedItems.compactMap { self.index(of: $0) }

        return deltaItems
    }

    public func getAddedAndRemovedItems(of anOther: [Element]) -> (added: [Element], removed: [Element]) {

        let firstList = Set(self)
        let secondList = Set(anOther)

        let addedItems = Array(secondList.subtracting(firstList))
        let removedItems = Array(firstList.subtracting(secondList))

        return (addedItems, removedItems)
    }
}

extension Array where Element: Equatable {

    public func removeDuplicates() -> [Element] {
        var result = [Element]()

        for value in self {
            if result.contains(value) == false {
                result.append(value)
            }
        }

        return result
    }
}

extension Array {

    public func filterDuplicates(includeElement: @escaping (_ lhs: Element, _ rhs: Element) -> Bool) -> [Element] {
        var results = [Element]()

        forEach { (element) in
            let existingElements = results.filter {
                return includeElement(element, $0)
            }
            if existingElements.count == 0 {
                results.append(element)
            }
        }

        return results
    }
}

extension Array where Element: Equatable {

    public mutating func remove(object: Element) {
        guard let index = index(of: object) else { return }
        remove(at: index)
    }

    public mutating func removeObjects(at indexes: [Int]) {
        let reversedIndexes = indexes.reversed()
        reversedIndexes.forEach { index in
            self.remove(at: index)
        }
    }
}
