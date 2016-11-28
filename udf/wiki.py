import string
import wikipedia

printable = set(string.printable)
x = wikipedia.page('List of multinational corporations')
companies_list = x.links
file = open('articles.tsv', 'w')
i = 0
for company in companies_list:
    try:
        x = wikipedia.WikipediaPage(company)
    except:
        print company, "no page found"
        continue
    file.write(x.pageid)
    file.write('\t')
    content = x.content
    content = filter(lambda n: n in printable, content)
    file.write(repr(content)[2:-1])
    file.write('\n')
    print company, "done!"
    i += 1

print 'total companies:', i

