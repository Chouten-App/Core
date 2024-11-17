//
//  Module.swift
//  Chouten
//
//  Created by Inumaki on 19/10/2024.
//

import Foundation

public struct Module: Hashable, Equatable, Codable, Sendable {
    public let id: String
    public let name: String
    public let author: String
    public let description: String
    public let type: Int
    public let subtypes: [String]
    public let version: String
    public var state: ModuleState? = .notInstalled

    public init(id: String, name: String, author: String, description: String, type: Int, subtypes: [String], version: String, state: ModuleState? = nil) {
        self.id = id
        self.name = name
        self.author = author
        self.description = description
        self.type = type
        self.subtypes = subtypes
        self.version = version
        self.state = state
    }
}
