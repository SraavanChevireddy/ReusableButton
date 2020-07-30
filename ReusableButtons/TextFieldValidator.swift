//
//  TextFieldValidator.swift
//  ReusableButtons
//
//  Created by Sraavan Chevireddy on 7/30/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct TextFieldValidator: View {
    
    // Create a observed object to validate the user input in Textfield manager.
    @ObservedObject var tfManager = TextFieldManager()
    var body: some View {
        VStack(alignment: .leading){
            Text("Please provide the details before proceeding further")
                .font(.custom("Arial Rounded MT Bold", size: 35))
                .bold()
            Text("The details you provided are completly safe with us. We don't share this with anyone else. Promise.")
                .foregroundColor(.secondary)
                .font(.body)
            
            TextField("Enter the Password", text: $tfManager.userInput)
                .padding()
                .font(.title)
                .background(Color.blue)
        Spacer()
        }
    .padding(2)
    }
}

struct TextFieldValidator_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldValidator()
    }
}
