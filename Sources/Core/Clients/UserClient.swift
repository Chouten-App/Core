//
//  UserClient.swift
//  Core
//
//  Created by Inumaki on 11/11/2024.
//

import Foundation
import UIKit

@MainActor
public struct UserClient {
    @UserDefault(key: "appearance", defaultValue: .unspecified)
    public static var appearance: UIUserInterfaceStyle
    
    @UserDefault(key: "accentColor", defaultValue: 0)
    public static var accentColor: Int
}
