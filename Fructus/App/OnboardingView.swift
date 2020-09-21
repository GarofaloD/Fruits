//
//  OnboardingView.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/17/20.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    var fruits : [Fruit] = fruitsData //connecion to data array
    
    //MARK: BODY
    var body: some View {
        TabView{
            //Cycle the card with the data from the fruits data model
            ForEach(fruits[0...4]) { item in
                FruitCardView(fruit: item)
            }//: LOOP
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)

    }
}


    //MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        //Previewing from the fruits data model
        OnboardingView(fruits: fruitsData)
    }
}
