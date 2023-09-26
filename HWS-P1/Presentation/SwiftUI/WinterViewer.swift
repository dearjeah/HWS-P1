//
//  WinterViewer.swift
//  HWS-P1
//
//  Created by Delvina Janice on 26/09/23.
//

import SwiftUI

struct WinterViewer: View {
    var pictures: [String] = []
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Winter Viewer")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct WinterViewer_Previews: PreviewProvider {
    static var previews: some View {
        WinterViewer()
    }
}
