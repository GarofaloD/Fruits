//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/27/20.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK:- PROPERTIES
    var name : String
    var content : String? = nil //Conditionals since we do not know if they will work
    var linkLabel: String? = nil
    var linkDestination : String? = nil
    
    
    //MARK:- BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }//:BODY
    
    
}
    //MARK:- PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Daniele Garofalo")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Website", linkLabel: "SwiftUi Masterclass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}//:PREVIEW
