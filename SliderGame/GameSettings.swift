//
//  GameSettings.swift
//  SliderGame
//
//  Created by Александр Зинин on 13.06.2024.
//

import Foundation

struct GameSettings {
    var currentValue = Double.random(in: 0...100)
    var targetValue = Int.random(in: 0...100)
}
