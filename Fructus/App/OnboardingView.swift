//
//  OnboardingView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 26.04.24.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    
    var body: some View {
        TabView{
            ForEach(fruits[0 ... 5]) { item in
                FruitCardView(fruit: item)
            }// : LOOP
        }// TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }// : body VIEW
}// : END


//MARK: - PREVIWE
#Preview {
    OnboardingView(fruits: fruitsData)
}
