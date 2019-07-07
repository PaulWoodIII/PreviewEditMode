//
//  ContentView.swift
//  PreviewEditMode
//
//  Created by Paul Wood on 7/7/19.
//  Copyright © 2019 Paul Wood. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  var body: some View {
    NavigationView {
      EditingView()
    }
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif
