//
//  ControlsView.swift
//  QuizApp
//
//  Created by Joshua Curry on 8/11/21.
//

import SwiftUI

struct ControlsView: View {
    @State var name = "user"
    @State var numOfShapes = 5
    @State var shapeType = ShapeType.circle
    var body: some View {
        VStack {
            Text("Controls")
                .font(.largeTitle)
                .padding()
            Text("Welcome, \(name)!")
            Spacer()
            HStack {
                ForEach(0..<numOfShapes, id: \.self){ _ in
                    switch shapeType {
                        case .circle: Circle()
                        case .capsule: Capsule()
                        case .rectangle: Rectangle()
                    }
                }
            }
            Form {
                TextField("Johnny Appleseed", text: $name)
                Stepper("Number of shapes \(numOfShapes)", value: $numOfShapes, in: 1...8)
                Picker("Shape Picker", selection: $shapeType, content: {
                    ForEach(ShapeType.allCases) { shape in
                        Text(shape.rawValue.capitalized)
                            .tag(shape)
                    }
                })
                .pickerStyle(SegmentedPickerStyle())
            }
        }
    }
    
    enum ShapeType: String, CaseIterable, Identifiable {
        case circle
        case rectangle
        case capsule
        
        var id: String {
            self.rawValue
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
