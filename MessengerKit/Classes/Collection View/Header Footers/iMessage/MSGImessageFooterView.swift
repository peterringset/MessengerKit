//
//  MSGImessageFooterView.swift
//  MessengerKit
//
//  Created by Stephen Radford on 12/06/2018.
//  Copyright © 2018 Cocoon Development Ltd. All rights reserved.
//

import UIKit

class MSGImessageFooterView: UICollectionReusableView, MSGSectionInfoProvider {
    
    @IBOutlet weak var label: UILabel!
    
    var style: MSGMessengerStyle? {
        didSet {
            guard let style = style as? MSGIMessageStyle else { return }
            
            label.font = style.footerFont
            label.textColor = style.footerTextColor
        }
    }
    
    var title: String? {
        didSet {
            label.text = title
        }
    }
    
    var message: MSGMessage?
    
    var delegate: MSGSectionInfoProviderDelegate?
    
}
