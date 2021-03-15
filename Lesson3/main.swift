//
//  main.swift
//  Lesson3
//
//  Created by Pauwell on 15.03.2021.
//

enum EngineState {
    case start, stop
}

enum WindowsState: String {
    case close = "Окна закрыты"
    case open = "Окна открыты"
}

enum MaxCargo: String {
    case car = "Грузоподъемность менее 100 кг"
    case truck = "Грузоподъемность более 100 кг"
}

struct SportCar {
    let brand: String
    let year: Int
    let cargoMax: MaxCargo
    var window: WindowsState
    var engine: EngineState
    
    init(brand: String, yaer: Int, cargo: MaxCargo, window: WindowsState, engine: EngineState) {
        self.brand = brand
        self.year = yaer
        cargoMax = cargo
        self.window = window
        self.engine = engine
    }
    
    mutating func changeWindow(to value: WindowsState) {
        print("change on \(value)")
        self.window = value
    }
    
    func printInfo() {
        print("Brand: \(self.brand)")
        print("Year: \(self.year)")
        print("Cargo: \(self.cargoMax.rawValue)")
        
        switch self.engine {
        case .start:
            print("Engine: ON")
        default:
            print("Engine: OFF")
            
        print("Windows: \(self.window.rawValue)")
        }
    }
}

struct TrunkCar {
    let brand: String
    let year: Int
    let cargoMax: MaxCargo
    var window: WindowsState
    var engine: EngineState
    
    mutating func changeEngine(to value: EngineState) {
        print("change on \(value)")
        self.engine = value
    }
    
    func printInfo() {
        print("Brand: \(self.brand)")
        print("Year: \(self.year)")
        print("Cargo: \(self.cargoMax.rawValue)")
        
        switch self.engine {
        case .start:
            print("Engine: ON")
        default:
            print("Engine: OFF")
            
        print("Windows: \(self.window.rawValue)")
        }
    }
}


var car = SportCar(brand: "Honda", yaer: 2018, cargo: .car, window: .close, engine: .stop)

car.printInfo()
car.changeWindow(to: .open)
car.printInfo()


