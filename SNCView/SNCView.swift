//
//  SNCView.swift
//  SNCView_Example
//
//  Created by Taillook on 2017/12/11.
//  Copyright © 2017年 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

public class SNCViewController: UIPageViewController, UIPageViewControllerDataSource {
    public var vcArray:[UIViewController] = []
    public var isInfinite = false
    public var startIndex = 0

    public init(isVertical: UIPageViewControllerNavigationOrientation, vcArray: [UIViewController], startIndex: Int){
        super.init(transitionStyle: .scroll, navigationOrientation: isVertical, options: nil)
        self.vcArray = vcArray
        self.startIndex = startIndex
    }

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        if vcArray.count != 0 {
            self.setViewControllers([vcArray[startIndex]], direction: .reverse, animated: true, completion: nil)
        }
        self.dataSource = self
        self.view.backgroundColor = UIColor.white
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = vcArray.index(of: viewController), index > 0 else {
            if isInfinite {
                return vcArray[vcArray.count - 1]
            }
            return nil
        }

        return vcArray[index - 1]
    }

    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
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
