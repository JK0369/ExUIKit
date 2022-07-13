//
//  ContentView.swift
//  ExUIKit
//
//  Created by 김종권 on 2022/07/13.
//

import UIKit
import SwiftUI

struct ContentView: View {
  @State var text: String
  var body: some View {
    VStack {
      MyUILabel(text: $text)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(text: "Example Text")
  }
}
