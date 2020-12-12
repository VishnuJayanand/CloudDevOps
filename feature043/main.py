mysum = 0
linenumber=0
with open("input.txt","r") as f:
    for line in f:
        linenumber += 1
        if (linenumber>128 and linenumber<440):
            mysum += int(line.split()[4])
            #print(linenumber)
    print(mysum)