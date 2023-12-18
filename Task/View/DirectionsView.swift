//
//  DirectionsView.swift
//  Task
//
//  Created by Radhe on 18/12/23.
//

import SwiftUI
struct DirectionsView: View {
    @State private var selectedDirection = Direction.north
    let directions = Direction.allCases

    var body: some View {
        NavigationView {
            VStack {
                Image(uiImage: selectedDirection.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
            }
            .navigationBarTitle("Select Direction", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Picker("Select a direction", selection: $selectedDirection) {
                        ForEach(directions, id: \.self) { direction in
                            Text(direction.rawValue).tag(direction)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
            }
        }
    }
}

struct DirectionsView_Previews: PreviewProvider {
    static var previews: some View {
        DirectionsView()
    }
}
