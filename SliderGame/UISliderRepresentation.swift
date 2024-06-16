//
//  UISliderRepresentation.swift
//  SliderGame
//
//  Created by Александр Зинин on 12.06.2024.
//

import SwiftUI

struct UISliderRepresentation: UIViewRepresentable {
  
    @Binding var value: Double
    
    let thumbColor: UIColor
    let thumbAlpha: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.changeValue),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(value)
        uiView.thumbTintColor = thumbColor.withAlphaComponent(thumbAlpha)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
    
    typealias UIViewType = UISlider
}

extension UISliderRepresentation {
    final class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func changeValue(_ sender: UISlider) {
            value = Double(sender.value)
        }
    }
}

#Preview {
    UISliderRepresentation(value: .constant(50), thumbColor: .orange, thumbAlpha: 0.5)
}
