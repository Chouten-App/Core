//
//  Stream.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation
import JavaScriptCore

public struct Stream: Codable, Equatable, Sendable {
    public let file: String
    public let type: String
    public let quality: String

    public init(file: String, type: String, quality: String) {
        self.file = file
        self.type = type
        self.quality = quality
    }

    public init(jsValue: JSValue) {
        self.file = jsValue.forProperty("file")?.toString() ?? ""
        self.type = jsValue.forProperty("type")?.toString() ?? ""
        self.quality = jsValue.forProperty("quality")?.toString() ?? ""
    }
}
