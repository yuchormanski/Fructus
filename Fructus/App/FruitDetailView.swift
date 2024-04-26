//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 26.04.24.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: - PROPERTIES
    var fruit : Fruit
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack (alignment: .center, spacing: 20) {
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    
                    
                    VStack (alignment: .leading, spacing: 20){
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRITION
                        FruitNutrientsView(fruit: fruit)
                        
                        //SUBHEADING
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        //DESCRIPTOIn
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                            
                        //LINK
                        SourceLinkView(fruit: fruit.title)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                        
                    }//: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: ScrollView
            .edgesIgnoringSafeArea(.top)
        }//: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW
#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
