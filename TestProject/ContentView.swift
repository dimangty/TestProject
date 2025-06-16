//
//  ContentView.swift
//  TestProject
//
//  Created by dmitry on 16/6/2568 BE.
//

import SwiftUI
import SUINavigation

struct ContentView: View {
    var body: some View {
        NavigationViewStorage {
            LoginView()
        }
    }
}

#Preview {
    ContentView()
}
