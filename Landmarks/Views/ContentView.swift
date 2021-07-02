//
//  ContentView.swift
//  Landmarks
//
//  Created by Thales Andrade on 03/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
 
    var body: some View{
        
        TabView(selection: $selection){
            
            VStack {
                CategoryHome().tag(Tab.featured)
                    .tabItem { Label("Featured", systemImage: "star") }
            }
            
            LandmarkList().tag(Tab.list)
                .tabItem { Label("List", systemImage: "list.bullet") }
        }.accentColor(.primary)
      
    }
    
}
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
