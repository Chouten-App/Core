//
//  JSValueError.swift
//  Chouten
//
//  Created by Inumaki on 16/10/2024.
//

import Foundation
import JavaScriptCore

public struct JSValueError: Error, LocalizedError, CustomStringConvertible {
    public var functionName: String?
    public var name: String?
    public var errorDescription: String?
    public var failureReason: String?
    public var stackTrace: String?

    public init(_ value: JSValue, _ functionName: String? = nil, stackTrace: Bool = true) {
        self.functionName = functionName
        self.name = value["name"]?.toString()
        self.errorDescription = value["message"]?.toString()
        self.failureReason = value["cause"]?.toString()
        if stackTrace {
            self.stackTrace = value["stack"]?.toString()
        }
    }

    public var description: String {
    """
    Instance\(functionName.flatMap { ".\($0)" } ?? "") => \
    \(name ?? "Error"): \(errorDescription ?? "No Message") \
    \(failureReason.flatMap { "    \($0)" } ?? "")
    """
    }
}
