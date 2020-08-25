//
//  Level.swift
//  GameJam_SpriteKit
//
//  Created by Alex Nascimento on 25/08/20.
//  Copyright © 2020 Alex Nascimento. All rights reserved.
//

import SpriteKit

class Level {
    
    var top: [[Character]]
    var bottom: [[Character]]
    
    init(_ top: [[Character]], _ bottom: [[Character]]) {
        self.top = top
        self.bottom = bottom
    }
}
