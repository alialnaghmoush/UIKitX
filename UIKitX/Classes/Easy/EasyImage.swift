//
//  EasyImage.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 21/06/2019.
//

extension UIImageView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Image
    @discardableResult
    public func image(_ set: UIImage) -> UIImageView {
        image = set
        return self
    }
}
