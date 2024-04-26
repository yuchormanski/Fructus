//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 26.04.24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: - PROPERTIES
    
    var labelText: String
    var labeImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labeImage)
        }
    }
}

//MARK: - PREVIEW
//#Preview {
//    SettingsLabelView()
//}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labeImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//#Preview (traits: .sizeThatFitsLayout) {
//    SettingsLabelView(labelText: "Fructus", labeImage: "info.circle")
//}

