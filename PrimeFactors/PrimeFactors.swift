public class PrimeFactors {
    
    public static func generate(number: Int) -> [Int] {
        var remainder = number
        var factors: [Int] = []
        if (number > 1) {
            for candidate in (2...remainder) {
                while (remainder % candidate == 0) {
                    factors += [candidate]
                    remainder /= candidate
                }
            }
        }
        return factors
    }
    
}