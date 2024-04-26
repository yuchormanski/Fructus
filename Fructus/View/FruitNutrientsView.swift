//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 26.04.24.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    
    //MARK: - PROPERTIES
    var fruit: Fruit
    let nutrents: [String] = ["Energy", "Sugar", "Fat",  "Protein", "Vitamins", "Minerals"]
    @State private var expanded: Bool = true // only for test
    
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g"){
                //            DisclosureGroup("Nutrition value per 100g", isExpanded: $expanded){ //only for test
                ForEach(0..<nutrents.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrents[item])
                            
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        //                        .font(Font.system(.body).bold())
                        .font(.system(.body).bold()) // same as above
                        
                        
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
                
            }
            
            
        }//: GroupBox
        
        
    }
}

//MARK: - PREVIEW
//#Preview {
//    FruitNutrientsView()
//}
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
