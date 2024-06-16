//
//  SliderGameView.swift
//  SliderGame
//
//  Created by Александр Зинин on 13.06.2024.
//

import SwiftUI

struct SliderGameView: View {
    @Bindable var sliderGameViewModel: SliderGameViewModel
    
    let color: UIColor
    
    var body: some View {
        VStack {
            let targetValue = sliderGameViewModel.gameSettings.targetValue
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            HStack {
                Text("0")
                UISliderRepresentation(
                    value: $sliderGameViewModel.gameSettings.currentValue,
                    thumbColor: color,
                    thumbAlpha: sliderGameViewModel.alpha
                )
                Text("100")
            }
            .padding()
        }
    }
}

#Preview {
    SliderGameView(sliderGameViewModel: SliderGameViewModel(), color: .red)
}
