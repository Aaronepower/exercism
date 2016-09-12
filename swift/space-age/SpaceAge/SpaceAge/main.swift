import Foundation

class SpaceAge {
    let seconds: Double
    static let earth: Double = 31_557_600
    static let mercury = 0.2408467
    static let venus = 0.61519726
    static let mars = 1.8808158
    static let jupiter = 11.862615
    static let saturn = 29.447498
    static let uranus = 84.016846
    static let neptune = 164.79132

    init(_ seconds: Double) {
        self.seconds = seconds
    }

    var onEarth: Double {
        return ( seconds / SpaceAge.earth )
    }

    var onMercury: Double {
        return ( seconds / SpaceAge.earth ) * SpaceAge.mercury
    }
    
    var onVenus: Double {
        return ( seconds / SpaceAge.earth ) * SpaceAge.venus
    }

    var onMars: Double {
        return ( seconds / SpaceAge.earth ) * SpaceAge.mars
    }

    var onJupiter: Double {
        return ( seconds / SpaceAge.earth ) * SpaceAge.jupiter
    }

    var onSaturn: Double {
        return ( seconds / SpaceAge.earth ) * SpaceAge.saturn
    }

    var onUranus: Double {
        return ( seconds / SpaceAge.earth ) * SpaceAge.uranus
    }

    var onNeptune: Double {
        return ( seconds / SpaceAge.earth ) * SpaceAge.neptune
    }

}
