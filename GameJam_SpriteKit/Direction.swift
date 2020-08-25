//
//  Direction.swift
//  GameJam_SpriteKit
//
//  Created by Alex Nascimento on 25/08/20.
//  Copyright © 2020 Alex Nascimento. All rights reserved.
//

enum Direction {
    case Up
    case Down
    case Left
    case Right
    
    var coord: (Int, Int) {
        switch self {
        case .Up:    return ( 0,-1)
        case .Down:  return ( 0, 1)
        case .Left:  return (-1, 0)
        case .Right: return ( 1, 0)
        }
    }
}
