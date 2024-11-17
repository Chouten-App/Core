//
//  SourceList.swift
//  Chouten
//
//  Created by Inumaki on 20/10/2024.
//

import Foundation
import JavaScriptCore

public struct SourceList: Codable, Equatable, Sendable {
    public let title: String
    public let list: [SourceData]
    
    public init(title: String, list: [SourceData]) {
        self.title = title
        self.list = list
    }
}
