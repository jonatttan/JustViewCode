//
//  ViewControllerScreen.swift
//  JustViewCode
//
//  Created by Jonattan Moises Sousa on 07/05/21.
//

import UIKit

final class ViewControllerScreen: UIView {
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

