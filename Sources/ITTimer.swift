//
//  ITTimer.swift
//  ITTimer
//
//  Created by LLDM on 15/01/2019.
//  Copyright © 2019 dev. All rights reserved.
//

import Foundation
import UIKit

protocol ITTimerDelegate {
    mutating func timerCompleted(time: CGFloat)
}

public class ITTimer {
    static let instance = ITTimer()
    var timer: Timer!
    var isRepeat: Bool = false
    var counter: CGFloat = 0.0
    var duration: CGFloat = 0.0
    var delegate: ITTimerDelegate?
    
    func initializeTimer(){
        if #available(iOS 10.0, *) {
            timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: { t in
                self.counter += 0.5
                
                if String(format: "%.1f", self.counter + 0.1) == String(format: "%.1f", self.duration) {
                    self.delegate?.timerCompleted(time:  self.counter + 0.1)
                    self.counter = 0.0
                }
                
                if !self.isRepeat {
                    self.stopTimer()
                }
            })
        } else {
            // Fallback on earlier versions
        }
    }
    
    public func startTimer(duration: CGFloat, isRepeat: Bool){
        self.isRepeat = isRepeat
        self.counter = 0.0
        initializeTimer()
    }
    
    public func pauseTimer(){
        timer?.invalidate()
    }
    
    public func resumeTimer(){
        initializeTimer()
    }
    
    public func stopTimer(){
        timer?.invalidate()
        timer = nil
    }
}
