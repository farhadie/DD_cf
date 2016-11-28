import string
import wikipedia

founders_list = []
printable = set(string.printable)
with open("founders.txt", "r") as ins:
    array = []
    for line in ins:
        founders_list.append(line[:-1])

ff = open('articles.tsv', 'a')
i = 0
for founder in founders_list:
    try:
        x = wikipedia.page(wikipedia.search(founder)[0])
    except:
        print founder, "no page found"
        continue
    ff.write(x.pageid)
    ff.write('\t')
    content = x.content
    content = filter(lambda n: n in printable, content)
    ff.write(repr(content)[2:-1])
    ff.write('\n')
    print founder, "done!"
    i += 1
ff.close()
print 'total companies:', i

