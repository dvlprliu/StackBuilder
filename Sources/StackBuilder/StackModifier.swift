//
//  File.swift
//
//
//  Created by liuzhuangzhuang01 on 2023/9/7.
//

import UIKit

// swiftlint:disable all
public protocol StackModifier {
    associatedtype Stack = UIStackView
    
    func setAlignment(_ alignment: UIStackView.Alignment) -> Stack
    func setDistribution(_ distribution: UIStackView.Distribution) -> Stack
    func setSpacing(_ spacing: CGFloat) -> Stack
    func setIsBaselineRelativeArrangement(_ baselineRelative: Bool) -> Stack
    func setIsLayoutMarginsRelativeArrangement(_ layoutMarginRelative: Bool) -> Stack
    func setLayoutMargins(_ layoutMargins: UIEdgeInsets) -> Stack
}
