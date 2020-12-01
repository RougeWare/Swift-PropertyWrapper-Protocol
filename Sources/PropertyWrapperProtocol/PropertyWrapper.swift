//
//  PropertyWrapper.swift
//  PropertyWrapper Protocol
//
//  Created by Ben Leggiero on 2019-09-23.
//  Copyright © 2019 Ben Leggiero BH-0-PD
//

/// Conform to this protocol to use any property wrapper type more generically.
public protocol PropertyWrapper {
    
    /// The type of value this property wrapper wraps
    associatedtype WrappedValue
    
    /// The value this property wrapper wraps
    var wrappedValue: WrappedValue { get }
}



/// Like `PropertyWrapper`, but explicitly calling out mutability.
///
/// Note that this is not _required_ for mutable property wrappers, but it will allow consumers to
/// more easily interact with your property wrapper.
public protocol MutablePropertyWrapper: PropertyWrapper {
    
    /// The value this property wrapper wraps
    var wrappedValue: WrappedValue { get set }
}
