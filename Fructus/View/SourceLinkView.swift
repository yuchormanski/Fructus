//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 26.04.24.
//

import SwiftUI

struct SourceLinkView: View {
    
    //MARK: - PROPERTIES
    var fruit: String
    let url = "https://wikipedia.org/wiki/"
    //MARK: - BODY
    
    
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link(destination: URL(string: "\(url)\(fruit)")!, label: {
                    Text("wikipedia")
                    Image(systemName: "arrow.up.right.square")
                })
                .font(.footnote)
                
            }
        }
    }
}
//MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruit: fruitsData[0].title)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
