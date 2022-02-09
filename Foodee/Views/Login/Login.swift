//
//  Login.swift
//  Foodee
//
//  Created by Alex Okhtov on 09.02.2022.
//

import Foundation

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

let storedUsername = "Has"
let storedPassword = "123123"


struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    
    @State var autheticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        
        ZStack{
            VStack {
                HelloText()
                UserImage()
                PhoneNumTextField(username: $username)
                //PasswordSecureField(password: $password)
                if autheticationDidFail {
                    Text("Not correct. Try again.")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                
                
                
                Button(action: {
                    if self.username == storedUsername && self.password == storedPassword{
                        self.authenticationDidSucceed = true
                        self.autheticationDidFail = false
                    } else {
                        self.autheticationDidFail = true
                        self.authenticationDidSucceed = false
                    }
                }) {
                   LoginButtonContent()
                }
            }
            .padding()
            if authenticationDidSucceed {
                Text("Login Succeeded!")
                    .font(.headline)
                    .frame(width: 250, height: 80)
                    .background(Color.green)
                    .cornerRadius(20.0)
                    .animation(Animation.default)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct HelloText: View {
    var body: some View {
        Text("Добро пожаловать!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("userimage")
            .resizable()
            .aspectRatio(contentMode:  .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

struct PhoneNumTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Телефон", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}
