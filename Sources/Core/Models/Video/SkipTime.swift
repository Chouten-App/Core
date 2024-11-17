//
//  SkipTime.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation
import JavaScriptCore

public struct SkipTime: Codable, Equatable, Sendable {
    public let start: Double
    public let end: Double
    public let type: String

    public init(start: Double, end: Double, type: String) {
        self.start = start
        self.end = end
        self.type = type
    }

    public init(jsValue: JSValue) {
        self.start = jsValue["start"]?.toDouble() ?? 0.0
        self.end = jsValue["end"]?.toDouble() ?? 0.0
        self.type = jsValue["type"]?.toString() ?? ""
    }
}
