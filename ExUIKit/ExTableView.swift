//
//  ExTableView.swift
//  ExUIKit
//
//  Created by 김종권 on 2022/07/14.
//

import UIKit
import SwiftUI

struct MyTableView: UIViewRepresentable {
  @Binding var isShowing: Bool
  
  func makeUIView(context: Context) -> UITableView {
    UITableView()
  }
  
  func updateUIView(_ uiView: UITableView, context: Context) {
    guard self.isShowing else { return }
    uiView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    uiView.delegate = context.coordinator
    uiView.dataSource = context.coordinator
  }
  
  func makeCoordinator() -> Coordinator {
    Coordinator()
  }
  
  class Coordinator: NSObject, UITableViewDelegate, UITableViewDataSource {
    var dataSource = (0...10).map(String.init(_:))
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      self.dataSource.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
      cell.textLabel?.text = self.dataSource[indexPath.row]
      return cell
    }
  }
}
