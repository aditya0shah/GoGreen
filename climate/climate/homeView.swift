//
//  homeView.swift
//  climate
//
//  Created by Aditya Shah on 6/3/23.
//

import SwiftUI

struct homeView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopup = false
    
    
    var body: some View {
        NavigationView {
            List(dataManager.dogs, id: \.id) { dog in
                Text(dog.breed)
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                showPopup.toggle()
                //add
            }, label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopup){
                newDogView()
            }
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
            .environmentObject(DataManager())
    }
}
