//
//  ProfileView.swift
//  SegmentedControl
//
//  Created by App-Designer2 . on 04.04.20.
//  Copyright © 2020 App-Designer2. All rights reserved.
//

import SwiftUI

struct InfoView : Identifiable {
    var id : Int
    let name,career,address,phone,youtube,email,website,instagram: String
}

struct ProfileView: View {
    
    var info : [InfoView] = [
    .init(id: 0, name: "Reynaldo Manzanilla", career: "iOS Developer", address: "Private", phone: "+(49)-293 - 493 - 6548", youtube: "App Designer2", email: "app.designer2@gmail.com", website: "www.app-designer2.io",instagram: "@app_designer2")]
    
    var body: some View {
       
                VStack {
                    
                ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [(Color("color2")),(Color("color3"))]), startPoint: .topTrailing, endPoint: .topLeading))
                    .frame(width: 414, height: 266).cornerRadius(10)
                    
                    VStack(spacing: -10) {
                        
                        Image("logo")
                        .resizable()
                            .frame(width: 150, height: 150)
                        
                        VStack {
                        
                        Text("App Designer2")
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                        
                        Text("iOS Developer")
                            
                        }
                    }
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 23))
                            .foregroundColor(.white)
                    }.offset(x: 180, y: -60)
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "square.and.pencil")
                            .font(.system(size: 23))
                            .foregroundColor(.white)
                    }.offset(x: -170, y: -60)
                    }
                        
                    Form {
                        ForEach(info, id: \.id) { inf in
                            Section(header: Text("Personal information:").bold().font(.title)) {
                            VStack {
                                HStack {
                                    Text("Name:")
                                    .bold()
                                    
                                Text(inf.name)
                                
                                    .foregroundColor(.secondary)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                }
                                
                            }
                              HStack {
                                Text("Email:")
                                .bold()
                                Text(inf.email)
                                
                                    .foregroundColor(.secondary)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                }
                                
                                HStack {
                                    Text("Phone:")
                                    .bold()
                                    
                                Text(inf.phone)
                                    .foregroundColor(.secondary)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                }
                                
                                HStack {
                                    Text("Address:")
                                    .bold()
                                    
                                Text(inf.address)
                                    .foregroundColor(.secondary)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                }
                                
                                HStack {
                                    
                                    Text("Career:")
                                    .bold()
                                Text(inf.career)
                                    .foregroundColor(.secondary)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                }
                                HStack {
                                    Text("Instagram:")
                                    .bold()
                                    
                                Text(inf.instagram)
                                .foregroundColor(.secondary)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                }
                                
                                HStack {
                                    Text("Youtube:")
                                    .bold()
                                    
                                Text(inf.youtube)
                                .foregroundColor(.secondary)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                }
                                
                                HStack {
                                    Text("Website:")
                                    .bold()
                                    
                                Text(inf.website)
                                .foregroundColor(.secondary)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                }
                            }//Section
                            
                            //Start
                            
                            //End
                        }
                        
                    }//Form
                        Spacer()
                    }.edgesIgnoringSafeArea(.top)
            }
        }
    
//I hope you like it, the GitHub Link will be on the description, so dont forget to subscribe thumb up and share it


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
