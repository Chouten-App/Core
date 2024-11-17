//
//  Repo.swift
//  SharedModels
//
//  Created by Inumaki on 10.06.24.
//

import Foundation

public struct RepoModule: Codable, Equatable {
    public let id: String
    public let name: String
    public let iconPath: String
    public let filePath: String
    public let author: String
    public let version: String
    public let subtypes: [String]
}
