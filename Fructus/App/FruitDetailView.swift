//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/23/20.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: PROPERTIES
    var fruit: Fruit


    //MARK: BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //HEADER
                    FruitHeaderView(fruit: fruit) //Specific fruit image is selected on FruitDetailView
                    VStack(alignment: .leading, spacing: 20){
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //NUTRIENTS
                        FruitsNutrientsView(fruit: fruit) //Nutrients component
                        //SUBHEADING
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//:VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//:VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline) //Eliminates empty space on top
                .navigationBarHidden(true)
            }//:SCROLL VIEW
            .edgesIgnoringSafeArea(.top) //Ignores safe area
        }//:NAVIGATION VIEW
    }//:BODY
}

    //MARK: PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}//:PREVIEW
