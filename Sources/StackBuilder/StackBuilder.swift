import UIKit.UIView

@resultBuilder public struct StackBuilder {
    static public func buildBlock(_ components: UIView...) -> [UIView] {
        components
    }
}
