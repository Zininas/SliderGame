//
//  SliderGameViewModel.swift
//  SliderGame
//
//  Created by Александр Зинин on 13.06.2024.
//

import Foundation
import Observation

@Observable
final class SliderGameViewModel: ObservableObject {
    var gameSettings = GameSettings()
    var alertIsPresented = false
    
    var computeScore: Int {
        100 - abs(gameSettings.targetValue - lround(gameSettings.currentValue))
    }
    
    var alpha: Double {
        Double(computeScore) / 100
    }
    
    func showAlert() {
        alertIsPresented.toggle()
    }
    
    func reset() {
        gameSettings.currentValue = 50
        gameSettings.targetValue = Int.random(in: 0...100)
    }
}
