//
//  Tile.swift
//  GameJam_SpriteKit
//
//  Created by Alex Nascimento on 25/08/20.
//  Copyright © 2020 Alex Nascimento. All rights reserved.
//

import SpriteKit

class Tile: SKSpriteNode {
    var type: Character
    var coord: (Int, Int)
    unowned var grid: Grid
    
    init(_ type: Character, _ coord: (Int, Int), _ size: CGSize, _ offset: CGFloat, _ grid: Grid) {
        self.type = type
        self.coord = coord
        self.grid = grid
        super.init(texture: nil, color: .magenta, size: size)
        switch type {
        case "b":
            color = .blue
        case "r":
            color = .red
        case "g":
            color = .green
        case "y":
            color = .yellow
        case "p":
            color = .purple
        default:
            color = .magenta
        }
    }
    
    func moveIn(_ dir: Direction, completion: @escaping () -> Void) {
        switch dir {
        case .Up:
            print("up")
        case .Down:
            print("down")
        case .Left:
            print("left")
        case .Right:
            print("right")
        }
        completion()
    }
    
    func getTile(_ dir: Direction) -> Tile? {
        return grid.tiles.first { (tile) -> Bool in
            tile.coord == (dir.coord.0 + self.coord.0, dir.coord.1 + self.coord.1)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
