//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 26.04.24.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //MARK: - PROPERTIES
    @State private var isAnimatingImage: Bool = false
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
       
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .opacity(isAnimatingImage ? 1 : 0.5)
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
        }//: ZStack
        .frame(height: 440)
        .onAppear () {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    
    }
}

//MARK: - PREVIEW
//#Preview {
//    FruitHeaderView(fruit: fruitsData[0])
//        .previewLayout(.fixed(width: 375, height: 440))
//}
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
                .previewLayout(.fixed(width: 375, height: 440))
    }
}
