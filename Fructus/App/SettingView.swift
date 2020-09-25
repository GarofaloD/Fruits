//
//  SettingView.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/25/20.
//

import SwiftUI

struct SettingView: View {
    //MARK:- PROPERTIES
    @Environment(\.presentationMode) var presentationMode //stores info regarding the environment where the device is located in
    
    
    
    
    //MARK:- BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    Text("Hello, World!")
                }//:VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .padding()
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
            }//:SCROLL VIEW
        }//:NAVIGATION VIEW
    }//:BODY
}

    //MARK:- PREVIEW
struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
            .previewDevice("Iphone 11 Pro Max")
    }
}//:PREVIEW
