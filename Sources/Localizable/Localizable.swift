
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
    fileprivate var defaultLocalizedString : String {
        return NSLocalizedString(key, tableName: tableName, bundle: bundle, value: value, comment: comment)
    }
    
    /// Localized string
    public var local : String {
        let count = arguments.count
        if count > 0 {
            if count < 2 {
                return String(format: defaultLocalizedString,arguments[0])
            } else if count < 3 {
                return String(format: defaultLocalizedString,arguments[0],arguments[1])
            } else if count < 4 {
                return String(format: defaultLocalizedString,arguments[0],arguments[1],arguments[2])
            } else if count < 5 {
                return String(format: defaultLocalizedString,arguments[0],arguments[1],arguments[2],arguments[3])
            }else if count < 6 {
                return String(format: defaultLocalizedString,arguments[0],arguments[1],arguments[2],arguments[3],arguments[4])
            } else if count < 7 {
                return String(format: defaultLocalizedString,arguments[0],arguments[1],arguments[2],arguments[3],arguments[4],arguments[5])
            } else if count < 8 {
                return String(format: defaultLocalizedString,arguments[0],arguments[1],arguments[2],arguments[3],arguments[4],arguments[5],arguments[6])
            } else if count < 9 {
                return String(format: defaultLocalizedString,arguments[0],arguments[1],arguments[2],arguments[3],arguments[4],arguments[5],arguments[6],arguments[7])
            } else if count < 10 {
                return String(format: defaultLocalizedString,arguments[0],arguments[1],arguments[2],arguments[3],arguments[4],arguments[5],arguments[6],arguments[7],arguments[8])
            } else if count < 11 {
                return String(format: defaultLocalizedString,arguments[0],arguments[1],arguments[2],arguments[3],arguments[4],arguments[5],arguments[6],arguments[7],arguments[8],arguments[9])
            }
        }
        return String(format: defaultLocalizedString, arguments)
    }
}

