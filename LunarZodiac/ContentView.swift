//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Aimee Hong on 9/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentYear = 2024
    @State private var imageNumber = 4
    
    var body: some View {
        VStack {
            Text(verbatim: "\(currentYear)")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.red)
            
            Spacer()
            
            Image("image\(imageNumber)")
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            HStack {
                Button {
                    imageNumber -= 1
                    if imageNumber < 0 {
                        imageNumber = 11
                    }
                    currentYear -= 1
                } label: {
                    Image(systemName: "chevron.left")
                }
                
                Spacer()
                
                Button {
                    imageNumber += 1
                    if imageNumber > 11 {
                        imageNumber = 0
                    }
                    currentYear += 1
                } label: {
                    Image(systemName: "chevron.right")
                }
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .font(.largeTitle)
            .fontWeight(.black)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
