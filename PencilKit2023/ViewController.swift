//
//  ViewController.swift
//  PencilKit2023
//
//  Created by Andrew Johnson on 8/1/23.
//

import PencilKit
import UIKit

class ViewController: UIViewController {
    
    private let canvasView: PKCanvasView = {
        let canvas = PKCanvasView()
        canvas.drawingPolicy = .anyInput
        return canvas
    }()
    
    private let toolPicker = PKToolPicker()
    
    let drawing = PKDrawing()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canvasView.drawing = drawing
        view.addSubview(canvasView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        canvasView.frame = view.bounds
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        self.toolPicker.setVisible(true, forFirstResponder: canvasView)
        self.toolPicker.addObserver(canvasView)
        canvasView.becomeFirstResponder()
    }
    
    
}
