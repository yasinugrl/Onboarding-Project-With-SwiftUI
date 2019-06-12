//
//  Button.swift
//  Onboarding Project
//
//  Created by Yasin Ugurlu on 12.06.2019.
//  Copyright © 2019 Yasin Ugurlu. All rights reserved.
//

import SwiftUI

struct ButtonView : View {
    let title: String
    var clickAction: (() -> Void)?
    var body: some View {
        Button(action: {
            self.clickAction?()
        }) {
            Text(title)
                .color(Color.white)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 50)
            }.background(Color(red: 18 / 255, green: 151 / 255, blue: 147 / 255))
            .cornerRadius(30)
            .shadow(radius: 10, x: 0, y:10)
            .padding()    }
}
