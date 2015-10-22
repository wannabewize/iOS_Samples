//
//  ViewController.swift
//  SimpleAnnotation
//
//  Created by wannabewize on 2014. 8. 29..
//  Copyright (c) 2014년 VanillaStep. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
  // 맵뷰와 아웃렛 연결
  @IBOutlet weak var mapView: MKMapView!
  
  // 어노테이션 추가
  @IBAction func addAnnotation(sender: AnyObject) {
    let namsan = MKPointAnnotation()
    namsan.coordinate = CLLocationCoordinate2DMake(37.5514, 126.9880)
    namsan.title = "남산"
    mapView.addAnnotation(namsan)
    
    let haewondae = MKPointAnnotation()
    haewondae.coordinate = CLLocationCoordinate2D(latitude: 35.1598, longitude: 129.1626);
    haewondae.title = "해운대"
    haewondae.subtitle = "부산"
    mapView.addAnnotation(haewondae)
  }
  
  // 어노테이션 삭제
  @IBAction func removeAnnotation(sender: AnyObject) {
    mapView.removeAnnotations(mapView.annotations)
  }
  
  override func viewDidAppear(animated: Bool) {
    let center = CLLocationCoordinate2DMake(37.6, 127.8)
    let span = MKCoordinateSpanMake(6.5, 6.5)
    let region = MKCoordinateRegionMake(center, span)
    // 맵뷰 표시 영역 변경
    mapView.setRegion(region, animated: true)
  }
}

