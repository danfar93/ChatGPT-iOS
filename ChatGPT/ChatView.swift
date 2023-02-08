//
//  ChatView.swift
//  ChatGPT
//
//  Created by Daniel Farrell on 21/01/2023.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15"
        uiView.load(request)
    }
}

struct ChatView: View {
    var body: some View {
        WebView(request: URLRequest(url: URL(string: "https://chat.openai.com/chat")!))
    }
}




struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
