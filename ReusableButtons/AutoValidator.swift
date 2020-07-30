//
//  AutoValidator.swift
//  ReusableButtons
//
//  Created by Sraavan Chevireddy on 7/30/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import Foundation
import SwiftUI
import AudioToolbox

class TextFieldManager : ObservableObject{
    // Set the maximum limit for your text field.
    let characterLimit = 10
    // Create a empty property that holds the user input
    @Published var userInput = ""{
        didSet{
            if userInput.count > characterLimit{
                // Crop the input to set the character limit
                userInput = String(userInput.prefix(characterLimit))
                // Optional to vibrate or beep on iPhone.
                AudioServicesPlayAlertSoundWithCompletion(kSystemSoundID_Vibrate) {
                    return
                }
                
            }
        }
    }
}
