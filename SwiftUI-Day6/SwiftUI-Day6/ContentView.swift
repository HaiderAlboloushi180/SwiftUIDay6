//
//  ContentView.swift
//  SwiftUI-Day6
//
//  Created by Haider Alboloushi on 8/25/20.
//  Copyright © 2020 Haider. All rights reserved.
//
//  New Comment, testing things out

import SwiftUI

struct ContentView: View {
    @State var width: CGFloat = 60
    @State var tapped: Bool = false
    var body: some View {
        VStack{
            
            Button(action: addItem) {
                ZStack{
                    Capsule().foregroundColor(Color("Purple"))
                    HStack{
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                        if tapped {
                            Text("Add new item")
                                .font(.custom("Avenir Next Demi Bold", size: 18))
                                .foregroundColor(.white)
                            Spacer()
                        }
                    }
                    .offset(x: tapped ? 20 : 0)

                }
                .frame(width: width, height: 60, alignment: .leading)
            }
            .animation(.interactiveSpring(response: 0.4, dampingFraction: 0.4, blendDuration: 0.5))
            
        }
    }
    
    func addItem() {
        tapped.toggle()
        if tapped{
            width = 300
        }
        else{
            width = 60
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
