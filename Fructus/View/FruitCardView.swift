//
//  FruitCardView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 25.04.24.
//

import SwiftUI



struct FruitCardView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                
                //FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0, green:0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                
                //FRUIT: TITLE
                Text(fruit.title)
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                
                //FRUIT: HEADLINE
                Text(fruit.headline)
                    .font(.system(size: 22))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)// добра практика: на широк екран текст на не повече от 640, на малък - 480
                
                
                
                
                //BUTTON: START
                
                StartButtonView()
                
            }// : VStack
        }// : ZStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(
//            colors:[fruit.gradientColors[0],fruit.gradientColors[1]])
            colors: fruit.gradientColors) // same as above
           , startPoint: .top,
           endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }// body View
}


//MARK: - PREVIEW
//#Preview(traits: .sizeThatFitsLayout) {
//    FruitCardView()
//        .previewLayout(.fixed(width: 320, height: 640))
//}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1]).previewLayout(.sizeThatFits)
    }
}
