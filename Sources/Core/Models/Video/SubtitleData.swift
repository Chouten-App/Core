//
//  Subtitle.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation
import JavaScriptCore

public struct SubtitleData: Codable, Equatable, Sendable {
    public let url: String
    public let language: String

    public init(url: String, language: String) {
        self.url = url
        self.language = language
    }

    public init(jsValue: JSValue) {
        self.url = jsValue["url"]?.toString() ?? ""
        self.language = jsValue["language"]?.toString() ?? ""
    }
}
