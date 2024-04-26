//
//  ContentView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 25.04.24.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar(content: { // depricated is .navigationBarItems
                Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })//: Button
                .sheet(isPresented: $isShowingSettings, content: { // програмно се отваря и затваря шийт със зададеното Вю
                    SettingsView()
                })
            })//: navigation Bar buttons
        }//: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
       
        
    }//: body
}


//MARK: - PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
}
