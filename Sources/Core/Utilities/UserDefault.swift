//
//  UserDefault.swift
//  Core
//
//  Created by Inumaki on 11/11/2024.
//

import Foundation
import Combine

@propertyWrapper
public struct UserDefault<T> {
    private let key: String
    private let defaultValue: T
    private let container: UserDefaults

    private let subject = PassthroughSubject<T, Never>()
    
    public var publisher: AnyPublisher<T, Never> {
        subject.eraseToAnyPublisher()
    }
    
    public init(key: String, defaultValue: T, container: UserDefaults = .standard) {
        self.key = key
        self.defaultValue = defaultValue
        self.container = container
    }

    public var wrappedValue: T {
        get { container.object(forKey: key) as? T ?? defaultValue }
        set {
            container.set(newValue, forKey: key)
            subject.send(newValue)
        }
    }
}
