//
//  ReusbaleButtons.swift
//  ReusableButtons
//
//  Created by Sraavan Chevireddy on 7/30/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

/**
 * This is primary button style.
 * This contains the background view with a text view.
 */
struct PrimaryStyle : ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
            .frame(width: 150, height: 35)
            .cornerRadius(17.5)
    }
}


/**
 * This is secondary button style. You can use this all over the application when the text is applied.
 * This can also be used a button style after the view is defined.
 */
struct SecondaryStyle : ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.blue)
            .font(.headline)
            .frame(width: 130, height: 55)
            .background(Color.clear)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.blue, lineWidth: 2))
    }
}


