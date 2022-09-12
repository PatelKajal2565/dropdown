//
//  ContentView.swift
//  Dropdown
//
//  Created by WebCodeGenie on 09/09/22.
//

import SwiftUI

struct ContentView: View {
    @State var arrDropdown:[String] = ["a","b"]
    
//    public var padding: Int {
//           get {
//               return self._id;
//           }
//           set {
//
//               self._id = newValue
//           }
//       }
    var body: some View {
        List {
            ForEach(0..<arrDropdown.count) { each in
                Text(arrDropdown[each])
                    .background(.red)
                    .foregroundColor(.white)
                }
           }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
