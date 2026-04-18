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
            VStack {
                Image("julio")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140.0, height: 180.0)
                    .clipShape(.circle)
                    .overlay(
                        Circle().stroke(Color.gray, lineWidth: 5)
                    )
                Text("Julio Cezar")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS and Android Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(text: "+55 41 992330843", icon: .system("phone.circle"))
                InfoView(text: "jcezar.t@gmail.com", icon: .system("envelope.fill"))
                InfoView(text: "linkedin.com/in/jcgteixeira", icon: .asset("linkedin"))
                InfoView(text: "github.com/jcezart", icon: .asset("github"))
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}


