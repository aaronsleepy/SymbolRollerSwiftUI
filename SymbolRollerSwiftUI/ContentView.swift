//
//  ContentView.swift
//  SymbolRollerSwiftUI
//
//  Created by Aaron on 2022/12/10.
//

import SwiftUI

struct ContentView: View {
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @State var imageName: String = "moon"
    
    
    var body: some View {
        VStack {
            Spacer(minLength: 30)
            
            Image(systemName: imageName)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Spacer(minLength: 30)
            
            Text(imageName)
                .font(.system(size: 40, weight: .bold, design: .default))
            
            Button {
                print("button tapped")
                
                imageName = symbols.randomElement()!
            } label: {
                HStack {
                    Image(systemName: "arrow.3.trianglepath")
                        .foregroundColor(.white)
                    
                    VStack {
                        Text("Reload")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .foregroundColor(.white)
                        
                        Text("Click me to reload")
                            .foregroundColor(.white)
                    }
                }
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
            .cornerRadius(40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
