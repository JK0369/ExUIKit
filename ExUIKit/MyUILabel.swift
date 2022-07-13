//
//  MyUILabel.swift
//  ExUIKit
//
//  Created by 김종권 on 2022/07/14.
//

import UIKit
import SwiftUI

struct MyUILabel: UIViewRepresentable {
  @Binding var text: String
  
  func makeUIView(context: Context) -> UILabel {
    let label = UILabel()
    label.textColor = .blue
    return label
  }
  func updateUIView(_ uiView: UILabel, context: Context) {
    uiView.text = text
  }
}
