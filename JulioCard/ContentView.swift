//
//  ContentView.swift
//  JulioCard
//
//  Created by Julio Cezar Teixeira on 16/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                Color(red: 44/255, green: 62/255, blue: 80/255)
                    .ignoresSafeArea()
            Text("Julio Cezar")
                .font(.title)
                .bold()
                .foregroundColor(.white)
        }

    }
}

#Preview {
    ContentView()
}
