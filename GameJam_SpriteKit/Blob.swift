//
//  Blob.swift
//  GameJam_SpriteKit
//
//  Created by Alex Nascimento on 25/08/20.
//  Copyright © 2020 Alex Nascimento. All rights reserved.
//

import SpriteKit

class Blob: SKNode {
    
    unowned var grid: Grid
    unowned var tile: Tile
    
    var isMoving = false
    
    var sprite: SKSpriteNode
    
    func move(_ dir: Direction) {
        if isMoving { return }
        isMoving = true
        tile.moveIn(dir) {
            self.isMoving = false
        }
    }
    
    init(tile: Tile) {
        self.tile = tile
        self.grid = tile.grid
        sprite = SKSpriteNode(color: .gray, size: CGSize(width: 25, height: 25))
        super.init()
        addChild(sprite)
        self.position = tile.position
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
