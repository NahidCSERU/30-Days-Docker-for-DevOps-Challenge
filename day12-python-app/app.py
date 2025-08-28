# Simple Calculator App
# Author: Nahid Hasan
# Date: 28/08/2025

def add(x, y):
    return x + y

def subtract(x, y):
    return x - y

def multiply(x, y):
    return x * y

def divide(x, y):
    if y == 0:
        return "❌ Cannot divide by zero!"
    return x / y

if __name__ == "__main__":
    print("🧮 Simple Calculator")
    print("Choose operation: add, subtract, multiply, divide")
    
    choice = input("Enter operation: ").strip().lower()
    num1 = float(input("Enter first number: "))
    num2 = float(input("Enter second number: "))

    if choice == "add":
        print(f"✅ Result: {add(num1, num2)}")
    elif choice == "subtract":
        print(f"✅ Result: {subtract(num1, num2)}")
    elif choice == "multiply":
        print(f"✅ Result: {multiply(num1, num2)}")
    elif choice == "divide":
        print(f"✅ Result: {divide(num1, num2)}")
    else:
        print("❌ Invalid operation")
