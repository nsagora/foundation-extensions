import Foundation

extension UserDefaults {

    public subscript<T>(key: String) -> T? {
        get {
            return value(forKey: key)
        }
        set(newValue) {
            setOrRemove(newValue, forKey: key)
        }
    }

    public func value<T>(forKey key: String) -> T? {
        return value(forKey: key) as? T
    }

    public func value<T>(forKey key: String, withDefault fallback: T) -> T {
        return value(forKey: key) ?? fallback
    }

    public func setOrRemove(_ value: Any?, forKey key: String) {
        if let value = value {
            self.set(value, forKey: key)
        }
        else {
            self.removeObject(forKey: key)
        }
    }
}
