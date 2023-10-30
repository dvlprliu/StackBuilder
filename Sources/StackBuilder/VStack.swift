import UIKit

final public class VStack: UIStackView {
    public init(
        alignment: UIStackView.Alignment = .fill,
        distribution: UIStackView.Distribution = .fill,
        spacing: CGFloat = UIStackView.spacingUseDefault,
        @StackBuilder _ views: () -> [UIView]
    ) {
        super.init(frame: .zero)
        self.axis = .vertical
        self.alignment = alignment
        self.distribution = distribution
        self.spacing = spacing
        translatesAutoresizingMaskIntoConstraints = false
        views().forEach(addArrangedSubview(_:))
    }

    public required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var stackView: UIStackView {
        return self
    }
}

extension VStack: StackModifier {
    public func setAlignment(_ alignment: UIStackView.Alignment) -> VStack {
        self.alignment = alignment
        return self
    }
    
    public func setDistribution(_ distribution: UIStackView.Distribution) -> VStack {
        self.distribution = distribution
        return self
    }
    
    public func setSpacing(_ spacing: CGFloat) -> VStack {
        self.spacing = spacing
        return self
    }
    
    public func setIsBaselineRelativeArrangement(_ baselineRelative: Bool) -> VStack {
        self.isBaselineRelativeArrangement = baselineRelative
        return self
    }

    public func setIsLayoutMarginsRelativeArrangement(_ layoutMarginRelative: Bool) -> VStack {
        self.isLayoutMarginsRelativeArrangement = layoutMarginRelative
        return self
    }
}
