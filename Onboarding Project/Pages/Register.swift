//
//  Register.swift
//  Onboarding Project
//
//  Created by Yasin Ugurlu on 12.06.2019.
//  Copyright © 2019 Yasin Ugurlu. All rights reserved.
//

import SwiftUI

struct Register : View {
    
    @State var name: String = ""
    @State var surname: String = ""
    
    @State var userName: String = ""
  
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack() {
            
            Text("CREATE \n NEW \n ACCOUNT").font(.title)
                .lineLimit(nil).multilineTextAlignment(.center).padding()
            
            
            VStack {
                
                HStack {
                    
                     TextField($name, placeholder: Text("First Name")).padding(5)
                    
                    Divider()
                    
                    
                     TextField($surname, placeholder: Text("Last Name")).padding(5)
                    }
                
                Divider()
                
                TextField($userName, placeholder: Text("Username")).padding(5)
                
                Divider()
                
                
                
                TextField($email, placeholder: Text("Email Address")).padding(5)
                
                Divider()
                
                TextField($password, placeholder: Text("Password")).padding(5)
                
                }.frame( height: 200)
                .border(Color.gray, width: 0.5).padding()
            

            
            
            
            Text("By tapping \"Sign Up\" \n account")
                .font(.subheadline)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
            
            
            HStack {
                Text("to the")
                    .font(.subheadline)
                
                NavigationButton(destination: Register()) {
                    Text("terms & condition")
                        .color(Color(red: 238 / 123, green: 151 / 255, blue: 103 / 255))
                    }
                
            }
            .padding(.bottom, 50)
            
            
          
            
            
            ButtonView(title: "CREATE NEW ACCOUNT", clickAction: {
                print("Click Sign up")
            })
            
            
            
            
            
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading)
            .background(Color(red: 245 / 255, green: 246 / 255, blue: 247 / 255))
            .navigationBarTitle(Text("Register"), displayMode: .inline)
            .tapAction {
                UIApplication.shared.keyWindow?.endEditing(true)
        }
    }
}

