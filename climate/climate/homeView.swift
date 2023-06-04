//
//  homeView.swift
//  climate
//
//  Created by Aditya Shah on 6/3/23.
//

import SwiftUI

struct homeView: View {
    @EnvironmentObject var dataManager: DataManager
    
    
    var body: some View {
        NavigationView {
            List(dataManager.dogs, id: \.id) { dog in
                Text(dog.breed)
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                //add
            }, label: {
                Image(systemName: "plus")
            }))
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
