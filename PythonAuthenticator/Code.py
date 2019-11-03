

def hide(param):
    output = []
    for index in range(0, len(param)):
        output.append(ord(param[index]))
    return output
passcode = input("Enter the password: ")
hidden_passcode = [108,105,118,105,110,103,95,119,105,116,104,95,116,104,101,95,115,110,97,107,101]
passcode = hide(passcode)
#if len(passcode) != len(hidden_passcode):
#    print("Your passcode is incorrect!")
#    exit()
#for index in range(0, len(hidden_passcode)):
#    if hidden_passcode[index] != passcode[index]:
#        print("Your passcode is incorrect!")
#        exit()

i = 0
output = []
for index in hidden_passcode:
    output.append(chr(index))



print(''.join(output))
