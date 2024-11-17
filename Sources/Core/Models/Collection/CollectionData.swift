//
//  CollectionData.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation

public struct CollectionData: Codable, Equatable, Hashable {
    public let uuid: String
    public let name: String
    
    public init(uuid: String, name: String) {
        self.uuid = uuid
        self.name = name
    }
}
