//
//  ModuleState.swift
//  Chouten
//
//  Created by Inumaki on 19/10/2024.
//

import Foundation

public enum ModuleState: Hashable, Equatable, Codable, Sendable {
    case upToDate
    case updateAvailable
    case discontinued
    case notInstalled
}
