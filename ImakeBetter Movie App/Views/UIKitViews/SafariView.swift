//
//  SafariView.swift
//  ImakeBetter Movie App
//
//  Created by Quasar on 17.11.2023.
//

import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {

    }

    func makeUIViewController(context: Context) -> SFSafariViewController {
        let safariVC = SFSafariViewController(url: self.url)
        return safariVC
    }
}
