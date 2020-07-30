//
//  ContentView.swift
//  ReusableButtons
//
//  Created by Sraavan Chevireddy on 7/30/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                // Primary button
                Button(action:{
                    print("This is primary button view")
                }){
                    Text("Primary Button")
                }
                .buttonStyle(PrimaryStyle())
                .padding()
                NavigationLink(destination: TextFieldValidator()) {
                        Text("Navigation Button")
                }

            }
        .navigationBarTitle(Text("Reusable Buttons"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
