//
//  ViewController.swift
//  Image Scroll
//
//  Created by Ashwin Tallapaka on 2/9/17.
//  Copyright © 2017 Ashwin Tallapaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var imageArray = [UIImage]()  // Array

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrollView.frame = view.frame
        imageArray = [#imageLiteral(resourceName: "rio-de-janeiro-thumb"), #imageLiteral(resourceName: "new-york-city-thumb"), #imageLiteral(resourceName: "barcelona-thumb"), #imageLiteral(resourceName: "london-thumb"), #imageLiteral(resourceName: "paris-thumb")]
        
       // image literal was selected in the above code.
        
        for i in 0..<imageArray.count
        {
         let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
        
        scrollView.contentSize.width = scrollView.frame.width * CGFloat(i + 1)
            scrollView.addSubview(imageView)
        }
        
    }

    }

