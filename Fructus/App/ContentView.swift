//
//  ContentView.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/17/20.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData
    
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 6)
                }
            }
            .navigationTitle("Fruits")
        }//:NAVIGATION
    }//:BODY
}
    
    //MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
