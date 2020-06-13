import UIKit


class NetworkManager: ObservableObject{
    
    func fetch (lat: Double, long: Double) -> (String,String, String, String, String, String){
        let date:Date = Date()
        let sunCalc:SunCalc = SunCalc.getTimes(date: date, latitude: lat, longitude: long)
        
        let formatter:DateFormatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        formatter.timeZone = TimeZone(abbreviation: "EST")
        let sunriseString:String = formatter.string(from: sunCalc.sunriseEnd)
        let sunsetString:String = formatter.string(from: sunCalc.sunset)
        let dawn:String = formatter.string(from: sunCalc.dawn)
        let dusk:String = formatter.string(from: sunCalc.dusk)
        let nautDawn:String = formatter.string(from: sunCalc.nauticalDawn)
        let nautDusk:String = formatter.string(from: sunCalc.nauticalDusk)
        let goldenHour:String = formatter.string(from: sunCalc.goldenHour)
        let goldenHourEnd:String = formatter.string(from: sunCalc.goldenHourEnd)
        return (dawn, dusk, goldenHour, goldenHourEnd, nautDawn, nautDusk)
        
    }
    
}
