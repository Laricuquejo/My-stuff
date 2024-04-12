name = input("What's your name? ")

while True:
    age = input("How old are you? ")

    if not age.isdigit():
        print("Sorry, that's not a number. Please enter a valid age.")
    else:
        print("Hello " + name + ", you are " + age + " years old.")
        break 