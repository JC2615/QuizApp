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
    var body: some View {
        VStack {
            Text("Controls")
                .font(.largeTitle)
                .padding()
            Text("Welcome, \(name)!")
            Spacer()
            HStack {
                ForEach(0..<numOfShapes, id: \.self){ _ in
                    Circle()
                }
            }
            Form {
                TextField("Johnny Appleseed", text: $name)
                Stepper("Number of shapes \(numOfShapes)", value: $numOfShapes, in: 1...8)
            }
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
