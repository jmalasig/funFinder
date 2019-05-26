//
//  PhotoDetailViewController.swift
//  funFinder
//
//  Created by Apple on 5/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    
    @IBOutlet weak var photoDetailTwo: UIImageView!
    
    //@IBOutlet weak var photoDetail: UIImageView!
    
    var photo : Photos? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let realPhoto = photo {
            title = realPhoto.caption
            if let cellPhotoImageData = realPhoto.imageData {
                //photoDetail.image = UIImage(data: cellPhotoImageData)

                
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    
                    print(cellPhotoImageData, "???")
                    print (cellPhotoImage, "!!!")
                    
                    photoDetailTwo.image = cellPhotoImage
                 //^causes Thread 1: Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value
                 }
                

            }
        }

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
     }
    */

}
