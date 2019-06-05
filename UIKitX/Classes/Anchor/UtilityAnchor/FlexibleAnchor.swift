//
//  FlexibleAnchor.swift
//  Pods
//
//  Created by Ali AlNaghmoush on 02/06/2019.
//


public struct FlexibleAnchor {
    var points: CGFloat!
    var relation: AnchorRelation!
}

prefix operator >=
@discardableResult
public prefix func >= (spacing: CGFloat) -> FlexibleAnchor {
    return FlexibleAnchor(points: spacing, relation: .greaterThanOrEqual)
}

prefix operator <=
@discardableResult
public prefix func <= (spacing: CGFloat) -> FlexibleAnchor {
    return FlexibleAnchor(points: spacing, relation: .lessThanOrEqual)
}
