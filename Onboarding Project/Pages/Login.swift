//
//  Login.swift
//  Onboarding Project
//
//  Created by Yasin Ugurlu on 12.06.2019.
//  Copyright © 2019 Yasin Ugurlu. All rights reserved.
//

import SwiftUI

struct Login : View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {

        VStack() {
            
            Image("ico-logo").resizable()
                .aspectRatio(CGSize(width: 2, height: 0.6), contentMode: .fit)
                .padding()
            
            Text("WELCOM \n E").font(.largeTitle).lineLimit(nil).multilineTextAlignment(.center)
            
            
            VStack {
                
                TextField($email, placeholder: Text("Email")).padding(5)
                
                Divider()
                
                TextField($password, placeholder: Text("Password")).padding(5)
                
            }.frame( height: 100)
            .border(Color.gray, width: 0.5).padding()
            
            
            HStack {
                Spacer()
                 Text("Forgot Password?")
            } .padding()
            
            
            ButtonView(title: "SIGN IN", clickAction: {
                print("Click Sign in")
            })
            
            
            Text("Don't have an \n account")
            .font(.subheadline)
            .lineLimit(nil)
            .multilineTextAlignment(.center)
            .padding(.top, 50)
            
            NavigationButton(destination: Register()) {
                Text("Create new account")
                    .color(Color(red: 238 / 123, green: 151 / 255, blue: 103 / 255))
            }
           
            
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading)
        .background(Color(red: 245 / 255, green: 246 / 255, blue: 247 / 255))
        .navigationBarTitle(Text("Login"), displayMode: .inline)
            .tapAction {
                UIApplication.shared.keyWindow?.endEditing(true)
        }
    }
}


