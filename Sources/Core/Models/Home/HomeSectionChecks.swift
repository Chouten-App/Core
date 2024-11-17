//
//  HomeSectionChecks.swift
//  Chouten
//
//  Created by Inumaki on 19/10/2024.
//

import Foundation

public struct HomeSectionChecks: Codable, Equatable, Hashable {
    public let id: String
    public let url: String
    public var isInCollection: Bool
    
    public init(id: String, url: String, isInCollection: Bool) {
        self.id = id
        self.url = url
        self.isInCollection = isInCollection
    }
}
