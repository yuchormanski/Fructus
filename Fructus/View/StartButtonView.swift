//
//  StartButtonView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 26.04.24.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY
    
    
    var body: some View {
        Button (action: {
            print("Exit the onboarding")
            isOnboarding = false
        }, label: {
            HStack (spacing: 8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        })// : Button
        .accentColor(.white)
    }
}


//MARK: - PERVIEW
//#Preview (traits: .sizeThatFitsLayout) {
//    StartButtonView()
//        .preferredColorScheme(.dark)
//        .previewLayout(.sizeThatFits)
//}


struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
