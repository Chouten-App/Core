//
//  ItemStatus.swift
//  Chouten
//
//  Created by Inumaki on 19/10/2024.
//


import Foundation

public enum ItemStatus: String, Codable, Sendable {
    case inprogress = "In-Progress"
    case completed = "Completed"
    case planned = "Planned"
    case dropped = "Dropped"
    case none = "None"
}
