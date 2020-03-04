//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Jovan Markovic on 3/4/20.
//  Copyright © 2020 Jovan Markovic. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var ratingStackView: UIStackView!
    @IBOutlet var ratingDislike: UIButton!
    @IBOutlet var ratingGood: UIButton!
    @IBOutlet var ratingGreat: UIButton!

    
    @IBAction func ratingSelected(sender: UIButton) {
        switch sender.tag {
        case 100: rating = "dislike"
        case 200: rating = "good"
        case 300: rating = "great"
        default: break
        }
        performSegue(withIdentifier: "unwindToDetailView", sender: sender)
    }
    
    var rating: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)

        let scale = CGAffineTransform(scaleX: 0, y: 0)
        let translate = CGAffineTransform(translationX: 0, y: 500)
//        ratingStackView.transform = CGAffineTransform(scaleX: 0, y: 0)
//        ratingStackView.transform = CGAffineTransform(translationX: 0, y: 500)
        
        
//        ratingStackView.transform = scale.concatenating(translate)

        ratingDislike.transform = scale.concatenating(translate)
        ratingGood.transform = scale.concatenating(translate)
        ratingGreat.transform = scale.concatenating(translate)


        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {

        // Scale Up animation
//        UIView.animate(withDuration: 0.8, delay: 0, options: [], animations: {
//            self.ratingStackView.transform = CGAffineTransform.identity
//        }, completion: nil)
        
        // Spring animation
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: {
                self.ratingDislike.transform = CGAffineTransform.identity
            }, completion: nil)
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: {
                self.ratingGood.transform = CGAffineTransform.identity
            }, completion: nil)
        UIView.animate(withDuration: 1, delay: 1, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: {
                self.ratingGreat.transform = CGAffineTransform.identity
            }, completion: nil)

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
