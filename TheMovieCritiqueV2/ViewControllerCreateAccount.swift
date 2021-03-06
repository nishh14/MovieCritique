//
//  ViewControllerCreateAccount.swift
//  TheMovieCritiqueV2
//
//  Created by Claudio Coletta on 08/05/2017.
//  Copyright © 2017 CCNN. All rights reserved.
//

import UIKit

class ViewControllerCreateAccount: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pickerGenre: UIPickerView!
    @IBOutlet weak var buttonSubmit: UIButton!
    @IBOutlet weak var navigationBar: UINavigationBar!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
             // assignbackground()
        navigationBar.topItem?.title = "Create Account"
        buttonSubmit.layer.cornerRadius = 7
        buttonSubmit.layer.shadowColor = UIColor.black.cgColor
        buttonSubmit.layer.shadowRadius = 4

        // Input data into the Array:
        pickerData = ["Action", "Comedy", "Documentary", "Drama", "Family",  "Horror", "Thriller"]
        
        
       // let center = NotificationCenter.default
        
     //   center.addObserver(self, selector: #selector(self.keyboardWillShowWithNotification(notification:)), name: .UIKeyboardWillShow, object: view.window)
        self.pickerGenre.dataSource = self;
        self.pickerGenre.delegate = self;
        
   
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
//    func assignbackground(){
//        let background = UIImage(named: "Background")
//        
//        var imageView : UIImageView!
//        imageView = UIImageView(frame: view.bounds)
//        imageView.contentMode =  UIViewContentMode.scaleAspectFill
//        imageView.clipsToBounds = true
//        imageView.image = background
//        imageView.center = view.center
//        view.addSubview(imageView)
//        self.view.sendSubview(toBack: imageView)
//    }
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        
//        coordinator.animate(alongsideTransition: { (UIViewControllerTransitionCoordinatorContext) -> Void in
//            
//            let orient = UIApplication.shared.statusBarOrientation
//            
//            switch orient {
//                
//            case .portrait:
//                
//                print("Portrait")
//           //     self.assignbackground()
//                
//            case .landscapeLeft,.landscapeRight :
//                
//                print("Landscape")
//             //   self.assignbackground()
//                
//            default:
//                
//                print("Anything But Portrait")
//          //      self.assignbackground()
//            }
//            
//        }, completion: { (UIViewControllerTransitionCoordinatorContext) -> Void in
//            //refresh view once rotation is completed not in will transition as it returns incorrect frame size.Refresh here
//            
//        })
//        super.viewWillTransition(to: size, with: coordinator)
//        
//    }



//Keyboard
    //MARK: Keyboard will show
//    func keyboardWillShowWithNotification(notification: Notification)
//    {
//        print("The keyboard has appeared")
//        //print(notification.description)
//
//        var userInfo = notification.userInfo!
//        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
//        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
//        
//        var contentInset:UIEdgeInsets = self.scrollView.contentInset
//        contentInset.bottom = keyboardFrame.size.height
//        self.scrollView.contentInset = contentInset
//    }
//    
//    
//    func keyboardWillHideWithNotification(notification: Notification)
//    {
//        print("The keyboard has disappeared")
//     //   print(notification.description)
//
//    }
    

}
