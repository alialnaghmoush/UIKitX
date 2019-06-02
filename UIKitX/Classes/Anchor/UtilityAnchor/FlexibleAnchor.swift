//
//  FlexibleAnchor.swift
//  Pods
//
//  Created by Ali AlNaghmoush on 02/06/2019.
//

import UIKit


public struct FlexibleAnchor {
    var points: CGFloat!
    var relation: NSLayoutConstraint.Relation!
}

prefix operator >=
@discardableResult
public prefix func >= (p: CGFloat) -> SteviaFlexibleMargin {
    return SteviaFlexibleMargin(points: p, relation: .greaterThanOrEqual)
}

prefix operator <=
@discardableResult
public prefix func <= (p: CGFloat) -> SteviaFlexibleMargin {
    return SteviaFlexibleMargin(points: p, relation: .lessThanOrEqual)
}
