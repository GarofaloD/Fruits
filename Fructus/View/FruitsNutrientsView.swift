//
//  FruitsNutrientsView.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/24/20.
//

import SwiftUI

struct FruitsNutrientsView: View {
    //MARK:- PROPERTIES
    var fruit : Fruit
    let nutrients : [String] = ["Energy", "Sugar", "Fat","Protein", "Vitamins", "Minerals"]
    
    
    
    //MARK: - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional Value per 100gr"){ //Works like an accordion
                ForEach(0 ..< nutrients.count, id: \.self) { item in //self uses the elements on the array as ids
                    
                    Divider().padding(.vertical, 2) //Creates division lines
                    
                    HStack {
                        Group { //Creates a small cluster of components
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }//:DISCLOSURE GROUP
        }//:GROUP BOX
    }//:BODY
    
    
}

    //MARK: - PREVIEW
struct FruitsNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}//:PREVIEW
