//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 26.04.24.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    
    //MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundStyle(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if( linkLabel != nil && linkDestination != nil ){
                    Link(destination: URL(string: "https://\(linkDestination!)")!, label: {
                        Text(linkLabel!)
                    })
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
            
        }
    }
}

//MARK: - PREVIEW
//#Preview {
//    SettingsRowView()
//}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", linkLabel: "John / Jane", linkDestination: "hjksdfkhjgksdfh")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
