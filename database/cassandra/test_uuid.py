#!/usr/bin/python
# read in.csv adding one column for UUID

import csv
import uuid

fin = open('/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/sample1.csv', 'rb')
fout = open('/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/sample1u.csv', 'w')

reader = csv.reader(fin, delimiter=',', quotechar='"')
writer = csv.writer(fout, delimiter=',', quotechar='"')

firstrow = True
for row in reader:
    if firstrow:
        row.append('UUID')
        firstrow = False
    else:
        row.append(uuid.uuid4())
    writer.writerow(row)
