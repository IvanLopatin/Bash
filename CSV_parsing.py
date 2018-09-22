import re,csv,os

with open('C:\inf.csv', 'r') as csvfile:
    read = csv.reader(csvfile, delimiter=',')
    sortedlist = sorted(read,key=lambda  x: (x[4], x[5]))
    for row in sortedlist:
      x = ', '.join(row)
      for line in x:
        result = re.findall(r'\d+,\s+\S+,\s\S+,\s[a-zA-Z]+.\S,\s\d+,\s\d+', x, re.M|re.I)
      qwef2 = open(r'C:\user.log', 'a+')
      for line in result:
        qwef2.write('\n'.join([str(i) for i in result]))
        print result
qwef2.close()
#os.remove('C:\ya\user.log')
csvfile.close()
