//
//  SampleViewController.swift
//  NativeAutoLayout
//
//  Created by Carki on 2023/01/03.
//

import UIKit

final class SampleViewController: UIViewController {
    private let mainView = SampleView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
