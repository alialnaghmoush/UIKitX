//
//  EasyStack.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 21/06/2019.
//

extension UIStackView {
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Vertical Stack
    @discardableResult
    public func VStack(_ set: UIView...) -> UIStackView {
        
        set.forEach { (x) in
            addArrangedSubview(x)
        }
        
        axis = .vertical
        spacing = 0
        alignment = .fill
        distribution = .fill
        
        return self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Horizontal Stack
    @discardableResult
    public func HStack(_ set: UIView...) -> UIStackView {
        
        set.forEach { (x) in
            addArrangedSubview(x)
        }
        
        axis = .horizontal
        spacing = 0
        alignment = .fill
        distribution = .fill
        
        return self        
    }
    
    @discardableResult
    public func axis(_ set: AnchorAxis) -> UIStackView {
        axis = set
        return self
    }
    
    @discardableResult
    public func distribution(_ set: StackDistribution) -> UIStackView {
        distribution = set
        return self
    }
    
    @discardableResult
    public func alignment(_ set: StackAlignment) -> UIStackView {
        alignment = set
        return self
    }
    
    @discardableResult
    public func spacing(_ set: CGFloat) -> UIStackView {
        spacing = set
        return self
    }
    
}
