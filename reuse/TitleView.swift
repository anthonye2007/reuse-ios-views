//
//  TitleView.swift
//  reuse
//
//  Created by Anthony Elliott on 2/26/18.
//  Copyright © 2018 Pillar Technology. All rights reserved.
//

import UIKit

@IBDesignable
class TitleView: UIView {

    var contentView: UIView?
    @IBInspectable var nibName: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleSetup()
    }
    
    func titleSetup() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        contentView = view
    }
    
    func loadViewFromNib() -> UIView? {
        guard let nibName = nibName else {
            return nil
        }
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }

}
