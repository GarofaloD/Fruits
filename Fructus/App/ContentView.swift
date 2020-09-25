//
//  ContentView.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/17/20.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData //Data from each fruit
    @State private var isShowingSettings: Bool = false //Controls state of settings showing or not
    
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits){ item in  // we couls use fruits.shuffled() if we want to shuffle
                    //take us to the detail screen of each fruit
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 6)
                    }//:navigation link
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//:BUTTON > Image belongs to the button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingView()
                    }
            )//: NAV BAR ITEMS
        }//:NAVIGATION
    }//:BODY
}
    
    //MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
