//
//  ContentView.swift
//  Custom-Button
//
//  Created by ewerson on 30/10/21.
//

import SwiftUI

struct CustomButtom: View {
    // MARK: - Properties
    @State var count = 0
    
    var body: some View {
        ZStack{
            Button {
                print("tapped button")
                self.count += 1
            } label: {
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            .padding()
            .foregroundColor(Color.theme.buttonColor)
            .background(Color.theme.backgroundColor)
            .clipShape(Circle())
            
            if count != 0 {
                Text("\(count)")
                    .padding(5)
                    .background(Color.theme.buttonBadge)
                    .clipShape(Circle())
                    .foregroundColor(Color.yellow)
                    .offset(x: 17, y: -25)
            }
        }
        .frame(width: 100, height: 100)
        .animation(.spring(), value: count)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CustomButtom()
                .previewLayout(.sizeThatFits)
            
            CustomButtom()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
