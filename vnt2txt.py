#!/usr/bin/python
import sys

def chunks(l, n):
	    return [l[i:i+n] for i in range(0, len(l), n)]

if len(sys.argv) != 2:
	print 'Wrong number of arguments.\nSYNOPSIS\n\tvnt2txt file'
	sys.exit(1)
inp = sys.argv[1]
with open(inp, 'r') as f:
	state = 0
	data = ''
	for line in f:
		prefix = 'BODY'
		if line[:len(prefix)].upper() == prefix:
			state = 1
		if state > 0:
			sidx = line.find(':')
			if sidx != -1:
				if state == 1:
					data += line[sidx + 1:]
					state = 2
				else:
					state = 0
			else:
				data += line
data = data.replace('\r\n', '')
data = data.replace('==', '=')
result = ''
for chunk in chunks(data, 3):
	chunk = chunk[1:]
	if chunk != '':
		result += chr(int(chunk, 16))
print result
