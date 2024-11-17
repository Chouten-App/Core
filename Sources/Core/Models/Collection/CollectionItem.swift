//
//  CollectionItem.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation

public struct CollectionItem: Codable, Equatable, Sendable {
    public var infoData: InfoData
    public var url: String
    public var flag: ItemStatus
    
    public init(infoData: InfoData, url: String, flag: ItemStatus) {
        self.infoData = infoData
        self.url = url
        self.flag = flag
    }
}
