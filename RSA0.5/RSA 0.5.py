# This file has a few dependencies. To install them, run the commands below.

# pip install binascii
# pip install pycryptodome

import binascii
from Crypto.Util.number import inverse

modulus = 2 ** 512

def Encrypt(plaintext, key):
    plaintext_value = int(binascii.hexlify(bytes(plaintext, 'ascii')), 16)
    
    return hex((plaintext_value * key) % modulus)

def Decrypt(ciphertext, key):
    ciphertext_value = int(ciphertext, 16)
    
    mod_inverse = inverse(key, modulus)
    plaintext_value = hex((mod_inverse * ciphertext_value) % modulus)[2:]
    
    char_buffer = ""
    for i in range(0, len(plaintext_value), 2):
        char_buffer += chr(int(plaintext_value[i:i+2], 16))

    return char_buffer

def main():
    valid_inputs = ["1", "2", "3"]
    
    while True:
        print("What would you like to do?")
        print("1: Encrypt")
        print("2: Decrypt")
        print("3: Exit")
        user_input = input("Enter a number to continue. ")

        if user_input not in valid_inputs:
            print("Invalid input!")
            continue

        if user_input == "1":
            key = input("What is your key? ")
            plaintext = input("What do you want to encrypt? ")
            print("Your ciphertext is " + Encrypt(plaintext, int(key)))
        elif user_input == "2":
            key = input("What is your key? ")
            ciphertext = input("What do you want to decrypt? ")
            print("Your plaintext is " + Decrypt(ciphertext, int(key)))
        else:
            break

    print("Thank you for using our cryptosystem! Have a nice day.")

main()
            
