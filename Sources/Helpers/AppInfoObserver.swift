import Foundation

public class AppInfoObserver {

    private let bundle: Bundle
    private let userDefaults = UserDefaults.standard
    private var keypath: String!

    private let prefix = "_app.info.observer."
    private var key: String {
        return prefix + keypath
    }

    private var oldValue: String? {
        get {
            return getAppEnvironment()
        }
        set {
            saveAppEnvironment(environment: newValue)
        }
    }

    private var newValue: String? {
        return (self.bundle.infoDictionary! as NSDictionary).value(forKeyPath: keypath) as? String
    }

    init(bundle: Bundle) {
        self.bundle = bundle
    }

    func observerChange(forKeypath keypath: String, callback: (_ oldValue: String?, _ newValue: String?) -> Void) {

        self.keypath = keypath

        guard oldValue != newValue else { return }
        callback(oldValue, newValue)
        oldValue = newValue
    }

    private func saveAppEnvironment(environment: String?) {

        guard let environment = environment else { return }
        let environmentDict: NSDictionary = [key: environment]
        guard let finalFileURL = getFileURL() else { return }
        environmentDict.write(to: finalFileURL, atomically: true)

    }

    private func getAppEnvironment() -> String? {

        var environmentDict: NSDictionary?
        if let url = getFileURL() {
            environmentDict = NSDictionary(contentsOf: url)
        }
        if let environmentDict = environmentDict {
            return environmentDict[key] as? String
        }

        return nil
    }

    private func getFileURL() -> URL? {

        let fileManager = FileManager.default
        let urls = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        guard urls.count != 0 else { return nil }
        let finalFileURL = urls.first!.appendingPathComponent("Environment.plist")

        return finalFileURL
    }
}
