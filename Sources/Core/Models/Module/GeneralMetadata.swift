//
//  GeneralMetadata.swift
//  Chouten
//
//  Created by Inumaki on 19/10/2024.
//

import Foundation

public struct GeneralMetadata: Hashable, Equatable, Codable, Sendable {
    public let author: String
    public let description: String
    public let lang: [String]
    public let baseURL: String
    public let bgColor: String
    public let fgColor: String

    public init(author: String, description: String, lang: [String], baseURL: String, bgColor: String, fgColor: String) {
        self.author = author
        self.description = description
        self.lang = lang
        self.baseURL = baseURL
        self.bgColor = bgColor
        self.fgColor = fgColor
    }
}
