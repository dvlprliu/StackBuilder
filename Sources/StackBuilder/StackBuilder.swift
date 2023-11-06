import UIKit.UIView

@resultBuilder public struct StackBuilder {
    static public func buildBlock(_ components: UIView...) -> [UIView] {
        components.flatMap { view in
            if let holderView = view as? HolderView {
                return holderView.views
            } else {
                return [view]
            }
        }
    }
    
    public static func buildArray(_ components: [[UIView]]) -> UIView {
        components.reduce(HolderView()) { partialResults, views in
            partialResults.views.append(contentsOf: views)
            return partialResults
        }
    }
}
