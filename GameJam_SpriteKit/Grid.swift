//
//  Grid.swift
//  GameJam_SpriteKit
//
//  Created by Alex Nascimento on 25/08/20.
//  Copyright © 2020 Alex Nascimento. All rights reserved.
//

import SpriteKit

class Grid: SKNode {
    var tiles = [Tile]()
    var tileSet: [[Character]]
    var tileSize = CGSize(width: 40,height: 40)
    var tileOffset: CGFloat = 10
    
    var center: CGPoint {
        didSet {
            // recenter grid
            self.position.x = center.x - (CGFloat(tileSet[0].count) * (tileSize.width + tileOffset))/2 + tileSize.width/2 + tileOffset/2
            self.position.y = center.y + (CGFloat(tileSet.count) * (tileSize.height + tileOffset))/2 - tileSize.height/2 - tileOffset/2
        }
    }
    
    init(tileSet: [[Character]]) {
        center = .zero
        self.tileSet = tileSet
        super.init()
        for row in 0..<tileSet.count {
            for col in 0..<tileSet[0].count {
                let tile = Tile(tileSet[row][col], (col, row), tileSize, tileOffset, self)
                tile.position = CGPoint(x: CGFloat(col) * (tileSize.width + tileOffset),
                y: CGFloat(row) * (-tileSize.height - tileOffset))
                tiles.append(tile)
            }
        }
        tiles.forEach { (t) in
            addChild(t)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
