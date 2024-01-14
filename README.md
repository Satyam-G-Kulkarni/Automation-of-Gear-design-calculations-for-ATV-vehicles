# Gear Design Calculator

This MATLAB script is designed to calculate the factor of safety (FOS) for gears in a two-stage reduction system based on user-provided inputs. The factors considered include tensile strength, Brinell hardness number (BHN), and gear specifications such as the number of teeth on the pinion, module, and overall gear ratio.

Usage
Input Prompt: The script starts by prompting the user to enter the number of stages (s), the number of values for pinion teeth (n), the number of values for the module (n1), the overall gear ratio (g), tensile strength (sut), and BHN (bhn).

Loop Through Pinion Teeth and Module Values: The script then iterates through the specified number of values for pinion teeth and module, collecting user input for each.

Calculation Loop: Inside the main loop, the script performs calculations for each combination of pinion teeth and module values. It calculates the gear ratio for each stage, determines the effective face width, calculates the maximum tangential force, and then computes the factor of safety (FOS).

Output: The script outputs the results for each combination of pinion teeth and module, displaying the module value, pinion teeth count, and FOS. Separate outputs are provided for the first and second stages of the gear system.
