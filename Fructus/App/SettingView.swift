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
    @AppStorage("isOnboarding") var isOnboarding : Bool = false //Modifier for the scene switching

    //MARK:- BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: - SECTION 1 //This one is coded with the swift ui method, not Petras (test)
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle"), content: {
                        Divider().padding(.vertical, 4)
                        /*@START_MENU_TOKEN@*/HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are natuarally low in fat, sodium and calories. None have cholesterol. Fruits are source of many essential nutrients, including potassium, fieber and much more")
                                .font(.footnote)
                        }/*@END_MENU_TOKEN@*/
                    })
                    //MARK: -  SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"), content: {
                        Divider().padding(.vertical, 4)
                        Text("If you wish you can restart the application by to ggle the switch on this box. That way it starts the onboarding process and you will see the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        //Toggle button to reset the app
                        Toggle(isOn: $isOnboarding, label: { //toggling switches the isOnboarding to true
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        })
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    })
                    
                    
                    
                    //MARK:- SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {

                        SettingsRowView(name: "Developer", content: "Daniele Garofalo")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name:"Compatibility", content: "IOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUi Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    })//:GROUP BOX
                    
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
