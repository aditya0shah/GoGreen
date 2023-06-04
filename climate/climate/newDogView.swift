//
//  newDogView.swift
//  climate
//
//  Created by Aditya Shah on 6/3/23.
//

import SwiftUI

struct newDogView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newDog = ""
    var body: some View {
        VStack {
            TextField("Dog", text: $newDog)
            
            Button {
                dataManager.addDog(dogBreed: newDog)
            } label: {
                Text("Save")
            }
        }
        .padding()
    }
}

struct newDogView_Previews: PreviewProvider {
    static var previews: some View {
        newDogView()
    }
}
