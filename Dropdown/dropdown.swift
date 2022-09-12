//
//  dropdown.swift
//  Dropdown
//
//  Created by WebCodeGenie on 09/09/22.
//

import UIKit
import SwiftUI

class Dropdown
{
    var arrDropdown: [String] = []
    var backgroundColor: UIColor = .white
    var TextColor:UIColor = .black
    var sender:UIButton?
    var dropdownview:UIView?

    init(arrDropdown: [String], backgroundColor: UIColor ,TextColor:UIColor,sender:UIButton) {
            self.arrDropdown = arrDropdown
            self.backgroundColor = backgroundColor
        self.sender = sender
            self.setupDropDown()
    }
    deinit
    {
        
    }
    
    public func setupDropDown()
    {
        let child = UIHostingController(rootView:ContentView())
        dropdownview = child.view
        dropdownview?.frame = CGRect(x: sender!.frame.minX, y: sender!.frame.minY + sender!.frame.height, width: 100, height: 100)
        sender?.superview?.addSubview(dropdownview!)
    }
    public func showDropdown()
    {
        self.dropdownview?.frame.size = CGSize(width: sender?.frame.width ?? 100, height:100)
    }
}
