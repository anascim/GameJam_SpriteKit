//
//  LevelManager.swift
//  GameJam_SpriteKit
//
//  Created by Guilherme Enes on 25/08/20.
//  Copyright © 2020 Alex Nascimento. All rights reserved.
//

import Foundation

class LevelManager {
    static var level1: Level = Level([
        ["r", "b", "g"],
        ["b", "b", "g"],
        ["g", "g", "y"]
    ], [
        ["y", "b", "g"],
        ["b", "b", "g"],
        ["g", "g", "y"]
    ])
    
    static var level2 = Level([
        ["r", "b", "b", "g"],
        ["b", "b", "g", "y"],
        ["g", "g", "y", "y"]
    ], [
        ["y", "b", "b", "g"],
        ["b", "b", "g", "y"],
        ["g", "g", "y", "y"]
    ])
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
