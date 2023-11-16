//
//  ActivityIndicatorView.swift
//  ImakeBetter Movie App
//
//  Created by Quasar on 16.11.2023.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
}
