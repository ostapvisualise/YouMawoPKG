//
//  File.swift
//  
//
//  Created by Admin on 07.04.2021.
//

import Foundation
import UIKit

#if os(iOS)
protocol NetworkSpeedProviderDelegate: class {
    func callWhileSpeedChange(networkStatus: NetworkStatus)
}

public enum NetworkStatus :String {
    case poor
    case good
    case disConnected
}

class NetworkSpeedTest: UIViewController {
    
    weak var delegate: NetworkSpeedProviderDelegate?
    var startTime = CFAbsoluteTime()
    var stopTime = CFAbsoluteTime()
    var bytesReceived: CGFloat = 0
    var testURL:String?
    var speedTestCompletionHandler: ((_ megabytesPerSecond: CGFloat, _ error: Error?) -> Void)? = nil
    var timerForSpeedTest:Timer?
    
    func networkSpeedTestStart(UrlForTestSpeed:String!){
        testURL = UrlForTestSpeed
        timerForSpeedTest = Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(testForSpeed), userInfo: nil, repeats: true)
    }
    func networkSpeedTestStop(){
        timerForSpeedTest?.invalidate()
    }
    @objc func testForSpeed()
    {
        testDownloadSpeed(withTimout: 2.0, completionHandler: {(_ megabytesPerSecond: CGFloat, _ error: Error?) -> Void in
            print("%0.1f; KbPerSec = \(megabytesPerSecond)")
            if (error as NSError?)?.code == -1009
            {
                self.delegate?.callWhileSpeedChange(networkStatus: .disConnected)
                print("------ connection speed checker status:=  disConnected ------")
            }
            else if megabytesPerSecond == -1.0
            {
                self.delegate?.callWhileSpeedChange(networkStatus: .poor)
                
                print("------ connection speed checker status:=  poor ------")
            }
            else
            {
                self.delegate?.callWhileSpeedChange(networkStatus: .good)
                
                print("------ connection speed checker status:=  good ------")
            }
        })
    }
}
#endif
