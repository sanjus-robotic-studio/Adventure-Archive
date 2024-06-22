//
//  Item.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 22/06/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
