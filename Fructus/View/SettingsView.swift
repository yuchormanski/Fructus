//
//  SettingsView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 26.04.24.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOboarding: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack (spacing: 20){
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labeImage: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical,4)
                        HStack (alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essentiols nutrents, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }//: Section 1
                    
                    //MARK: - SECTION 2
      
                    GroupBox(label:
                                SettingsLabelView(labelText: "Customization", labeImage: "paintbrush")) 
                    {
                        Divider().padding(.vertical, 4)
                         Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding prosess and you will see the welcome screen again.")
                            .font(.footnote)
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOboarding, label: {
                            if isOboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.secondary)
                            }
                        })
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }//: Section 2
                    
                    //MARK: - SECTION 3
                    GroupBox(label:
                                SettingsLabelView(labelText: "A[pplication", labeImage: "apps.iphone")
                             , content: {
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Nikolay Yuchormanski")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Website",linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter",linkLabel: "@Nikoaly", linkDestination: "google.com")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    })
                    
                }//: VStack
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                //                .navigationBarItems(trailing: <#T##View#>)// depricated
                .toolbar(content: {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                    .font(.title3)
                })
                .padding()
                
            }//: Scroll View
        }//: Navigation View
    }
}

//MARK: - PREVIEW
#Preview {
    SettingsView()
}
