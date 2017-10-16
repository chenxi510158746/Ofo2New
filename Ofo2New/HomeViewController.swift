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
    
    @IBOutlet weak var btnStart: UIButton!
    
    @IBOutlet weak var tabbarStackView: UIStackView!
    
    @IBOutlet weak var positioningStackView: UIStackView!
    
    @IBAction func arrowBtnTap(_ sender: UIButton) {
        
        movePaneView()
    }
    
    var isPaneCollapsed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        panelView.layer.cornerRadius = view.frame.width
    }

    @IBAction func drag(_ sender: UIPanGestureRecognizer) {
        
        switch sender.state {
        case .changed:
            let translate = sender.translation(in: view)
            
            if translate.y != 0 {
                movePaneView()
            }
        default:
            break
        }
        
    }
    
    func movePaneView() {
        
        let deltaY = panelView.frame.height / 4.5
        let deltaYForStartBtn = panelView.frame.height / 4
        
        if isPaneCollapsed {
            
            btnArrow.setImage(#imageLiteral(resourceName: "arrowup"), for: .normal)
            
            UIView.animate(withDuration: 0.3, animations: {
                
                self.panelView.transform = CGAffineTransform(translationX: 0, y: deltaY)
                self.btnStart.transform = CGAffineTransform(translationX: 0, y: deltaYForStartBtn)
                self.tabbarStackView.transform = CGAffineTransform(translationX: 0, y: deltaY)
                self.positioningStackView.transform = CGAffineTransform(translationX: 0, y: deltaY)
                
                self.panelView.alpha = 0.5
                
            })
            
        } else {
            
            btnArrow.setImage(#imageLiteral(resourceName: "arrowdown"), for: .normal)
            
            UIView.animate(withDuration: 0.3, animations: {
                
                self.panelView.transform = .identity
                self.btnStart.transform = .identity
                self.positioningStackView.transform = .identity

                self.panelView.alpha = 1
                
            })
            
            UIView.animate(withDuration: 0.5, animations: {
                
                self.tabbarStackView.transform = .identity
                
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
