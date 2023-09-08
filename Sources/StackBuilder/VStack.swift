import UIKit

final public class VStack: UIStackView {
    public init(@StackBuilder _ views: () -> [UIView]) {
        super.init(frame: .zero)
        axis = .vertical
        views().forEach(addArrangedSubview(_:))
    }
    
    public required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension VStack: StackModifier {
    public func setAlignment(_ alignment: UIStackView.Alignment) -> UIStackView {
        self.alignment = alignment
        return self
    }
    
    public func setDistribution(_ distribution: UIStackView.Distribution) -> UIStackView {
        self.distribution = distribution
        return self
    }
    
    public func setSpacing(_ spacing: CGFloat) -> UIStackView {
        self.spacing = spacing
        return self
    }
}
