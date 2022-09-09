def switchEndian(ins):
    return ins[6:] + ins[4:6] + ins[2:4] + ins[0:2]

def formatLines(lines):
    filtered_lines = []

    for l in lines:
        if (l.strip()):
            filtered_lines += [l]
        print(l)

    data = []

    for l in filtered_lines:
        data += l[13:48].split()

    return [d.ljust(8, '0') for d in data]
    
def writeLines(data, f):
    f.write("v2.0 raw\n")
    for i in range(len(data)):
        print(hex(i*4) + " " + data[i])
        f.write(data[i] + '\n')

if __name__ == "__main__":
    init = open("init.txt", 'r')
    text = open("text.txt", 'r')
    rodata = open("rodata.txt", 'r')

    codeout = open('codeout.hex', 'w')
    dataout = open('dataout.hex', 'w')

    init = init.readlines()
    text = text.readlines()
    rodata = rodata.readlines()

    data = formatLines(init[2:] + text[2:] + rodata[2:])

    switchedData = [switchEndian(d) for d in data]

    print('Code:')
    writeLines(data, codeout)