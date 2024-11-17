//
//  Label.swift
//  Chouten
//
//  Created by Inumaki on 16/10/2024.
//

import Foundation
import JavaScriptCore

public struct Label: Codable, Equatable, Hashable {
    public let text: String
    public let color: String

    public init(text: String, color: String) {
        self.text = text
        self.color = color
    }

    public init?(jsValue: JSValue) {
        guard
            let text = jsValue["text"]?.toString(),
            let color = jsValue["color"]?.toString(),
            Self.isValidHexColor(color)
        else {
            return nil
        }

        self.init(text: text, color: color)
    }

    private static func isValidHexColor(_ color: String) -> Bool {
        let regex = "^#[0-9A-Fa-f]{6}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: color)
    }
}
