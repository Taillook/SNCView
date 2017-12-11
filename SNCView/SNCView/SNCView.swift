//
//  SNCView.swift
//  SNCView_Example
//
//  Created by Taillook on 2017/12/11.
//  Copyright © 2017年 CocoaPods. All rights reserved.
//

import UIKit

class SNCViewController: UIPageViewController, UIPageViewControllerDataSource {
    var vcArray:[UIViewController] = []
    var isInfinite = false
    var startIndex = 0
    
    init(isVertical: UIPageViewControllerNavigationOrientation, vcArray: [UIViewController], startIndex: Int){
        super.init(transitionStyle: .scroll, navigationOrientation: isVertical, options: nil)
        self.vcArray = vcArray
        self.startIndex = startIndex
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if vcArray.count != 0 {
            self.setViewControllers([vcArray[startIndex]], direction: .reverse, animated: true, completion: nil)
        }
        self.dataSource = self
        self.view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = vcArray.index(of: viewController), index > 0 else {
            if isInfinite {
                return vcArray[vcArray.count - 1]
            }
            return nil
        }
        
        return vcArray[index - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        guard let index = vcArray.index(of: viewController), index < vcArray.count - 1 else {
            if isInfinite {
                return vcArray[0]
            }
            return nil
        }
        
        return vcArray[index + 1]
    }
}
