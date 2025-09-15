import Foundation

// Function to convert radius to volume of a sphere
func main() {
    // User input
    print("Please enter your radius (cm):")
    
    // Get input
    if let radius = readLine() {
        if let radiusDouble = Double(radius) {
            // Check if radius is greater than 0
            if radiusDouble > 0 {
                // Calculate and round volume
                let volume = (4.0 / 3.0) * Double.pi * pow(radiusDouble, 3)
                let volumeRounded = String(format: "%.3f", volume)

                // Display volume
                print("The volume is \(volumeRounded) cm³")
            } else {
                // Warn that radius is not greater than 0
                print("Please enter a radius that is greater than 0.")
            }
        } else {
            // Warn that input was not a valid number
            print("Please enter a valid radius as a number.")
        }
    } else {
        // Warn that input could not be read
        print("Error: Could not read input.")
    }
}

main()