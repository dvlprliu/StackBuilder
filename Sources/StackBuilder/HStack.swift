//
//  File.swift
//
//
//  Created by liuzhuangzhuang01 on 2023/9/7.
//

import UIKit

final public class HStack: UIStackView {
    public init(
        alignment: UIStackView.Alignment = .fill,
        distribution: UIStackView.Distribution = .fill,
        spacing: CGFloat = UIStackView.spacingUseDefault,
        @StackBuilder _ views: () -> [UIView]
    ) {
        super.init(frame: .zero)
        self.axis = .horizontal
        self.alignment = alignment
        self.distribution = distribution
        self.spacing = spacing
        translatesAutoresizingMaskIntoConstraints = false
        views().forEach { addArrangedSubview($0) }
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public var stackView: UIStackView {
        return self
    }
}

extension HStack: StackModifier {
    public func setAlignment(_ alignment: UIStackView.Alignment) -> HStack {
        self.alignment = alignment
        return self
    }
    
    public func setDistribution(_ distribution: UIStackView.Distribution) -> HStack {
        self.distribution = distribution
        return self
    }
    
    public func setSpacing(_ spacing: CGFloat) -> HStack {
        self.spacing = spacing
        return self
    }
    
    public func setIsBaselineRelativeArrangement(_ baselineRelative: Bool) -> HStack {
        self.isBaselineRelativeArrangement = baselineRelative
        return self
    }

    public func setIsLayoutMarginsRelativeArrangement(_ layoutMarginRelative: Bool) -> HStack {
        self.isLayoutMarginsRelativeArrangement = layoutMarginRelative
        return self
    }
}
