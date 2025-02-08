//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by student on 2/8/25.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text("turtlerock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    SwiftUIView()
}
