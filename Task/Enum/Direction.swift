//
//  Direction.swift
//  Task
//
//  Created by Radhe on 18/12/23.
//

import Foundation
import UIKit

enum Direction: String, CaseIterable {
    case north = "North"
    case south = "South"
    case east = "East"
    case west = "West"

    var image: UIImage {
        switch self {
        case .north:
            return UIImage(named: "north")!
        case .south:
            return UIImage(named: "south")!
        case .east:
            return UIImage(named: "east")!
        case .west:
            return UIImage(named: "west")!
        }
    }
}
