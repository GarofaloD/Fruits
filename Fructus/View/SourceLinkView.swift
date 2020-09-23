//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/23/20.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: PROPERTIES
    
    
    //MARK: BODY
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://www.wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//:HSTACK
            .font(.footnote)
        }//:GROUPBOX
    }//:BODY
    
}
    //MARK: PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
