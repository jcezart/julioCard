//
//  Untitled.swift
//  JulioCard
//
//  Created by Julio Cezar Teixeira on 18/04/26.
//
import SwiftUI

enum IconType {
    case system(String)
    case asset(String)
}

struct InfoView: View{
    
    let text: String
    let icon: IconType
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.white)
                .frame(height: 50)
            HStack(spacing: 12){
                switch icon {
                case .system(let name):
                    Image(systemName: name)
                        .foregroundStyle(Color.green)
                        .frame(width: 20)
                
                case .asset(let name):
                    Image(name)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                                        
                }
                Text(text)
            }            
        }
        .padding()
    }
}

