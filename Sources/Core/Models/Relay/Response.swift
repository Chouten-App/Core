//
//  Response.swift
//  Core
//
//  Created by Inumaki on 11/11/2024.
//

import Foundation

public struct Response: Codable, Sendable {
    public let statusCode: Int
    public let headers: [String: String]
    public let contentType: String
    public let body: String
    
    public init(statusCode: Int, headers: [String: String], contentType: String, body: String) {
        self.statusCode = statusCode
        self.headers = headers
        self.contentType = contentType
        self.body = body
    }
}
