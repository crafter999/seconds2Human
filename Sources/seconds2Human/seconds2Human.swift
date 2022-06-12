public func seconds2Human(number: Int, compact:Bool = false) -> String{    
    switch number {
    case 0..<2:
        return String(number) + (compact ? "s" : " second")
    case 2..<60:
        return String(number) + (compact ? "s" : " seconds")
    case 60..<120:
        return String(number/60) + (compact ? "m" : " minute")
    case 120..<3600:
        return String(number/60) + (compact ? "m" : " minutes")
    case 3600..<7200:
        return String(number/3600) + (compact ? "h" : " hour")
    case 7200..<86400:
        return String(number/3600) + (compact ? "h" : " hours")
    case 86400..<172800:
        return String(number/86400) + (compact ? "d" : " day")
    case 172800..<2592000:
        return String(number/86400) + (compact ? "d" : " days")
    default:
        return "N/A"
    }
}
