//
//  LoginView.swift
//  ExerciseSwiftUI
//
//  Created by Zewu Chen on 09/06/20.
//  Copyright © 2020 Zewu Chen. All rights reserved.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("background").resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView: View {
    var cor = #colorLiteral(red: 0.9960784314, green: 0.9960784314, blue: 0.9960784314, alpha: 1)
    var corDescricao = #colorLiteral(red: 0.9411764706, green: 0.937254902, blue: 0.9568627451, alpha: 1)
    var corLabel = #colorLiteral(red: 0.5882352941, green: 0.537254902, blue: 0.6901960784, alpha: 1)
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        ZStack(alignment: .leading) {
            BackgroundView()

            VStack {
                Text("Login")
                .foregroundColor(Color(cor))
                .fontWeight(.heavy)
                .bold()
                .offset(x: CGFloat(20), y: CGFloat(98))
                .font(.system(size: 25))

                Spacer()
            }

            VStack {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore!")
                .foregroundColor(Color(corDescricao))
                .padding(.top, 145)
                .padding(.leading, 20)
                .padding(.trailing, 20)

                Spacer()
            }

            VStack {
                Text("Email")
                    .foregroundColor(Color(corLabel))
                    .padding(.top, 238)
                    .padding(.leading, 54)

                Spacer()
            }

            VStack {
                ZStack {
                    TextField("", text: $email)
                    .padding(.init(top: 16, leading: 16, bottom: 16, trailing: 16))
                    .frame(width: UIScreen.screenWidth-40, height: CGFloat(51), alignment: .center)
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                    .background(Color(#colorLiteral(red: 0.1333333333, green: 0.03921568627, blue: 0.3176470588, alpha: 1)))
                    .foregroundColor(Color(#colorLiteral(red: 0.9411764706, green: 0.937254902, blue: 0.9568627451, alpha: 1)))
                    .padding(.top, 267)
                    .padding(.leading, 20)

                    Text("Input Text")
                        .frame(width: UIScreen.screenWidth, height: CGFloat(10), alignment: .leading)
                        .foregroundColor(Color.white)
                        .padding(.top, 267)
                        .offset(x: 54, y: 0)
                }

                Spacer()
            }

            VStack {
                Text("Password")
                    .foregroundColor(Color(corLabel))
                    .padding(.top, 340)
                    .padding(.leading, 54)

                Spacer()
            }

            VStack {
                ZStack {
                    TextField("Input Text", text: $password)
                    .padding(.init(top: 16, leading: 16, bottom: 16, trailing: 16))
                    .frame(width: UIScreen.screenWidth-40, height: CGFloat(51), alignment: .center)
                    .textContentType(.password)
                    .keyboardType(.emailAddress)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                    .background(Color(#colorLiteral(red: 0.1333333333, green: 0.03921568627, blue: 0.3176470588, alpha: 1)))
                    .foregroundColor(Color(#colorLiteral(red: 0.9411764706, green: 0.937254902, blue: 0.9568627451, alpha: 1)))
                    .padding(.top, 367)
                    .padding(.leading, 20)

                    Text("Input Text")
                        .frame(width: UIScreen.screenWidth, height: CGFloat(10), alignment: .leading)
                        .foregroundColor(Color.white)
                        .padding(.top, 367)
                        .offset(x: 54, y: 0)
                }

                Spacer()
            }

            VStack(alignment: .trailing) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Sign In")
                        .bold()
                        .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.03921568627, blue: 0.3176470588, alpha: 1)))
                        .font(.system(size: 14))
                }
                .padding(.init(top: 16, leading: 16, bottom: 16, trailing: 16))
                .frame(width: CGFloat(164), height: CGFloat(45), alignment: .center)
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                .padding(.top, 200)
                
                .padding(.leading, UIScreen.screenWidth-185)

                Text("Forget your password or email?")
                    .foregroundColor(Color.orange)
                    .bold()
                    .font(.system(size: 12))
                    .padding(.top, 8)

            }

        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone X"], id: \.self) { deviceName in
            LoginView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)

        }
    }
}
