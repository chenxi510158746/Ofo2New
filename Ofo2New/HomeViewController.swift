//
//  HomeViewController.swift
//  Ofo2New
//
//  Created by chenxi on 2017/9/28.
//  Copyright © 2017年 chenxi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var panelView: UIView!
    
    @IBOutlet weak var btnArrow: UIButton!
    
    @IBAction func arrowBtnTap(_ sender: UIButton) {
        
        movePaneView()
    }
    
    var isPaneCollapsed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        panelView.layer.cornerRadius = view.frame.width
    }

    func movePaneView() {
        
        let deltaY = panelView.frame.height / 4.5
        
        if isPaneCollapsed {
            
            btnArrow.setImage(#imageLiteral(resourceName: "arrowup"), for: .normal)
            
            UIView.animate(withDuration: 0.5, animations: {
                
                self.panelView.transform = CGAffineTransform(translationX: 0, y: deltaY)
                
            })
            
        } else {
            
            btnArrow.setImage(#imageLiteral(resourceName: "arrowdown"), for: .normal)
            
            UIView.animate(withDuration: 0.5, animations: {
                
                self.panelView.transform = .identity
                
            })
            
        }
        
        isPaneCollapsed = !isPaneCollapsed
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
