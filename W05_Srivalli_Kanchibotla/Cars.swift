//
//  Cars.swift
//  W05_Srivalli_Kanchibotla
//
//  Created by KANCHIBOTLA SRIVALLI  on 9/17/16.
//  Copyright © 2016 KANCHIBOTLA SRIVALLI . All rights reserved.
//

import Foundation

class Car{
    var roadName : String = "roadName"
    var carNumber : Int64 = 0
    var location :String = "origin"
    
}

let pickUp:[Car] = {
    var pickup1 = Car()
    pickup1.roadName = "DRGW"
    pickup1.carNumber = 18347
    pickup1.location = "Marble City"
    
    var pickup2 = Car()
    pickup2.roadName = "KCS"
    pickup2.carNumber = 29900
    pickup2.location = "Cargill"
    
    var pickup3 = Car()
    pickup3.roadName = "SP"
    pickup3.carNumber = 400089
    pickup3.location = "Lime Loader"
    
    var pickup4 = Car()
    pickup4.roadName = "SP"
    pickup4.carNumber = 401290
    pickup4.location = "Lime Loader"
    
    var pickup5 = Car()
    pickup5.roadName = "GATX"
    pickup5.carNumber = 73127
    pickup5.location = "Sallisaw"
    
    return [pickup1,pickup2,pickup3,pickup4,pickup5]
}()

let drop:[Car] = {
    var drop1 = Car()
    drop1.roadName = "SLSF"
    drop1.carNumber = 78465
    drop1.location = "Lime Loader"
    
    var drop2 = Car()
    drop2.roadName = "BN"
    drop2.carNumber = 441716
    drop2.location = "Lime Loader"
    
    var drop3 = Car()
    drop3.roadName = "GATX"
    drop3.carNumber = 91381
    drop3.location = "Feed Mill"
    
    var drop4 = Car()
    drop4.roadName = "KCS"
    drop4.carNumber = 753412
    drop4.location = "Warehouse"
    
    var drop5 = Car()
    drop5.roadName = "CNW"
    drop5.carNumber = 490032
    drop5.location = "Hampton Feed"
    
    var drop6 = Car()
    drop6.roadName = "GATX"
    drop6.carNumber = 73127
    drop6.location = "Hampton Feed"
    
    return[drop1,drop2,drop3,drop4,drop5,drop6]
}()




