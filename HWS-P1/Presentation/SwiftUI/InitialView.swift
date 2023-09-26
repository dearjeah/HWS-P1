//
//  InitialView.swift
//  HWS-P1
//
//  Created by dearjeah on 25/09/23.
//

import SwiftUI

struct InitialView: View {
    @State private var showStormViewer: Bool = false
    @State private var showWinterViewer: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("please choose viewer!")
                    .bold()
                    .padding(.bottom)
                NavigationLink {
                    BasicUIViewControllerRepresentable()
                } label: {
                    Text("Storm Viewer")
                        .padding()
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color(hex: "#55c2da"))
                        .cornerRadius(12)
                }
                NavigationLink {
                    WinterViewer()
                } label: {
                    Text("Winter Viewer")
                        .padding()
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color(hex: "#5dbea3"))
                        .cornerRadius(12)
                }
            }
            .navigationTitle("Welcome!")
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}


struct BasicUIViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc =  sb.instantiateViewController(identifier: "ViewController") as! ViewController
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //
    }
}

