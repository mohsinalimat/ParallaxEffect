//
//  ViewController.swift
//  ParallaxEffect
//
//  Created by vishal on 11/7/17.
//  Copyright © 2017 vishal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollCustom: UIScrollView!
    @IBOutlet weak var constraintsHeightImageView: NSLayoutConstraint!
    @IBOutlet weak var imageViewCustom: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollCustom.delegate = self
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        constraintsHeightImageView.constant = 303 - scrollView.contentOffset.y
        imageViewCustom.alpha = 1.0 - (scrollView.contentOffset.y/200)
        if scrollView.contentOffset.y < 0 {
            imageViewCustom.contentMode = .scaleAspectFill
        }else{
            imageViewCustom.contentMode = .scaleAspectFit
        }
    }
}

