//
//  ViewController.swift
//  FibonacciSeqApp
//
//  Created by Carlos Calderon on 11/16/14.
//  Copyright (c) 2014 Calderware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var includeZeroSwitch: UISwitch!
    @IBOutlet weak var includesZeroLabel: UILabel!
    @IBOutlet weak var maxNumberSequenceSlider: UISlider!

    @IBOutlet weak var fibonacciTextView: UITextView!
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateFibonacciSequence(){
        if includeZeroSwitch.on {
            maxNumberSequenceSlider.maximumValue = 94
        }else{
            maxNumberSequenceSlider.maximumValue = 93
        }
        println(maxNumberSequenceSlider.value)
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt(maxNumberSequenceSlider.value), includesZero: includeZeroSwitch.on)
        println(fibonacciSequence.values.description)
        fibonacciTextView.text = fibonacciSequence.values.description
        
        includesZeroLabel.text = includeZeroSwitch.on ? "YES" : "NO"
    }

}

