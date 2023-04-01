# This script helps you calculate the mole of an element
# using Avogadro's number.
# No guarantees as to how accurate this is, I'm not great with chemistry.

# Importing the necessary constant from the scipy library
from scipy.constants import Avogadro

# Get user input for the atomic weight and mass
atomic_weight = float(input("Enter the atomic weight of the element: "))
mass = float(input("Enter the mass of the element (in grams): "))

# Calculate the number of atoms
num_atoms = (mass / atomic_weight) * Avogadro

# Display the result
print(f"The number of atoms is {num_atoms:.2e}")
