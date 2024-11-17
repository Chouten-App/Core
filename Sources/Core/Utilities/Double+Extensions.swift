//
//  Double+Extensions.swift
//  Core
//
//  Created by Inumaki on 11/11/2024.
//

import Foundation

extension Double {
    public func removeTrailingZeros() -> String {
        return String(format: "%g", self)
    }
}
