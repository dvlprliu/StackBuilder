//
//  File.swift
//  
//
//  Created by liuzhuangzhuang01 on 2023/9/7.
//

import UIKit

final public class HStack: UIStackView {
    public init(@StackBuilder views: () -> [UIView]) {
        super.init(frame: .zero)
        axis = .horizontal
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
}
