//
//  OnboardingView.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/17/20.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        TabView{
            //Cycle the card
            ForEach(0..<5) { item in
                FruitCardView()
            }//: LOOP
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)

    }
}


    //MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
