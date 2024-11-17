//
//  SeasonData.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation
import JavaScriptCore

public struct SeasonData: Codable, Equatable, Sendable {
    public let name: String
    public let url: String
    public var selected: Bool?

    public init(name: String, url: String, selected: Bool? = nil) {
        self.name = name
        self.url = url
        self.selected = selected
    }
}

extension SeasonData {
    public init?(jsValue: JSValue) {
        guard
            let name = jsValue["name"]?.toString(),
            let url = jsValue["url"]?.toString()
        else {
            return nil
        }

        let selected = jsValue["selected"]?.toBool()

        self.init(name: name, url: url, selected: selected)
    }
}
