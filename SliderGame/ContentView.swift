//
//  ContentView.swift
//  SliderGame
//
//  Created by Александр Зинин on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderGameViewModel = SliderGameViewModel()
    
    var body: some View {
        VStack {
            SliderGameView(sliderGameViewModel: sliderGameViewModel, color: .red)
            
            Button("Проверь меня!", action: sliderGameViewModel.showAlert)
                .padding()
                .alert(
                    "Your Score",
                    isPresented: $sliderGameViewModel.alertIsPresented,
                    actions: {}
                ) {
                    Text(sliderGameViewModel.computeScore.formatted())
                }
            
            Button("Начать заново", action: sliderGameViewModel.reset)
        }
    }
}

#Preview {
    ContentView()
}
