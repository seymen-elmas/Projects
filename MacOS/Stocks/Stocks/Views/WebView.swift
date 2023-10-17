//
//  WebView.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 12.10.2023.
//
import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
   
    let url: URL
    
    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateNSView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "http://www.google.com")!)
    }
}
