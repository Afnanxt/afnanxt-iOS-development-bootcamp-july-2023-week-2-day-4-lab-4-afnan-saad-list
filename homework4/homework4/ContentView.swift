//
//  ContentView.swift
//  homework4
//
//  Created by afnan saad on 15/01/1445 AH.
//

import SwiftUI
struct Languges:Identifiable{
    var id : UUID = UUID()
    var Languge : String
    var image:URL?
    
    
}
var spain : Languges  = Languges(   Languge: "espanol")
var saudiArabia : Languges  = Languges(   Languge: "arabic")
var americaUnitedState : Languges  = Languges(  Languge: "english")
var india : Languges  = Languges(   Languge: "urdo")
var mexeco : Languges  = Languges(  Languge: "latin")



struct ContentView: View {
    @State  var countries  = [spain,saudiArabia,americaUnitedState,india,mexeco]
    
    var body: some View {
        NavigationStack{
            VStack {
                
                List(countries){
                    i in
                    Text(i.Languge)
                 //   NavigationLink(<#LocalizedStringKey#>, destination: Text(""))

                }
                
            }//vstack
            
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
