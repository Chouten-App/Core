//
//  String+Extensions.swift
//  Core
//
//  Created by Inumaki on 10/11/2024.
//

import Foundation

extension String: LocalizedError {
    public var errorDescription: String? { self }
}
