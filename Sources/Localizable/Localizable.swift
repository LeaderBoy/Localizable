
import Foundation

/// **Configurate Example** :
//    enum Tag : String {
//        case traffic
//        case food
//        case cosmetics
//    }
//
//    extension Tag : Localizable {
//        var key: String {
//            return "tag_" + self.rawValue
//        }
//
//        var value: String {
//            return self.rawValue
//        }
//    }

/// in Localizable.strings you need the following:
//    "tag_traffic" = "Traffic";
//    "tag_food" = "Food";
//    "tag_cosmetics" = "Cosmetics";

/// **Use Case Example**:
///     when you need a localized string, you only need to call
///     `.traffic.local`


/// A locallized protocol
/// code from https://medium.com/@mendibarouk/enhance-your-localized-capabilities-on-your-ios-applications-d3ba17138077
public protocol Localizable {
    var key : String { get }
    var value : String { get }
    var comment : String { get }
    var bundle : Bundle { get }
    var arguments : [CVarArg] { get }
    var tableName : String? { get }
}

extension Localizable {
    var value : String {
        return ""
    }
    var comment : String {
        return ""
    }
    var bundle : Bundle {
        return Bundle.main
    }
    var arguments : [CVarArg] {
       return []
    }
    var tableName : String? {
        return nil
    }
}

extension Localizable {
    fileprivate var defaultLocalizedString : String {
        return NSLocalizedString(key, tableName: tableName, bundle: bundle, value: value, comment: comment)
    }
    
    /// Localized string
    public var local : String {
        return String(format: defaultLocalizedString, arguments)
    }
}

