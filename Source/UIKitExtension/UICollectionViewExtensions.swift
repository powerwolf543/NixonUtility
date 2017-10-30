//
//  Created by NixonShih on 2017/10/30.
//  Copyright © 2017 NixonShih. All rights reserved.
//

#if os(iOS)

import UIKit

public enum SupplementaryViewType: String {
    case UICollectionElementKindSectionHeader
    case UICollectionElementKindSectionFooter
}

// MARK: - Methods
public extension UICollectionView {
    
    /// Dequeue reusable UICollectionViewCell using class name.
    ///
    /// - Parameters:
    ///   - name: UICollectionViewCell type.
    ///   - indexPath: location of cell in collectionView.
    /// - Returns: UICollectionViewCell object with associated class name.
    public func dequeueReusableCell<T: UICollectionViewCell>(withClass name: T.Type, for indexPath: IndexPath) -> T? {
        return dequeueReusableCell(withReuseIdentifier: String(describing: name), for: indexPath) as? T
    }
    
    /// Dequeue reusable UICollectionReusableView using class name.
    ///
    /// - Parameters:
    ///   - kind: the kind of supplementary view to retrieve.
    ///   - name: UICollectionReusableView type.
    ///   - indexPath: location of cell in collectionView.
    /// - Returns: UICollectionReusableView object with associated class name.
    public func dequeueReusableSupplementaryView<T: UICollectionReusableView>(ofKind kind: SupplementaryViewType, withClass name: T.Type, for indexPath: IndexPath) -> T? {
        return dequeueReusableSupplementaryView(ofKind: kind.rawValue, withReuseIdentifier: String(describing: name), for: indexPath) as? T
    }
    
    /// Register UICollectionReusableView using class name.
    ///
    /// - Parameters:
    ///   - kind: the kind of supplementary view to retrieve.
    ///   - name: UICollectionReusableView type.
    public func register<T: UICollectionReusableView>(supplementaryViewOfKind kind: SupplementaryViewType, withClass name: T.Type) {
        register(T.self, forSupplementaryViewOfKind: kind.rawValue, withReuseIdentifier: String(describing: name))
    }
    
    /// Register UICollectionViewCell using class name.
    ///
    /// - Parameters:
    ///   - nib: Nib file used to create the collectionView cell.
    ///   - name: UICollectionViewCell type.
    public func register<T: UICollectionViewCell>(nib: UINib?, forCellWithClass name: T.Type) {
        register(nib, forCellWithReuseIdentifier: String(describing: name))
    }
    
    /// Register UICollectionViewCell using class name.
    ///
    /// - Parameter name: UICollectionViewCell type.
    public func register<T: UICollectionViewCell>(cellWithClass name: T.Type) {
        register(T.self, forCellWithReuseIdentifier: String(describing: name))
    }
    
    /// Register UICollectionReusableView using class name.
    ///
    /// - Parameters:
    ///   - nib: Nib file used to create the reusable view.
    ///   - kind: the kind of supplementary view to retrieve.
    ///   - name: UICollectionReusableView type.
    public func register<T: UICollectionReusableView>(nib: UINib?, forSupplementaryViewOfKind kind: SupplementaryViewType, withClass name: T.Type) {
        register(nib, forSupplementaryViewOfKind: kind.rawValue, withReuseIdentifier: String(describing: name))
    }
}

#endif
