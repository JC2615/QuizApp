//
//  BottomText.swift
//  QuizApp
//
//  Created by Joshua Curry on 8/11/21.
//

import SwiftUI

struct BottomText: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .background(Color.blue.opacity(0.4))
    }
}

struct BottomText_Previews: PreviewProvider {
    static var previews: some View {
        BottomText(str: "Test text")
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
