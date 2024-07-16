c.url.searchengines['aid'] = 'http://aid/{}'
c.url.searchengines['go'] = 'http://go/{}'
c.url.searchengines['group'] = 'http://groups/{}'

config.bind('A', ':cmd-set-text -s :open -t aid')
config.bind('a', ':cmd-set-text -s :open aid')
config.bind('E', ':cmd-set-text -s :open -t go')
config.bind('e', ':cmd-set-text -s :open go')

c.content.user_stylesheets = ['css/user.css']
c.fonts.default_size = '13pt'
c.url.default_page = 'https://docs.google.com/document/d/1LGHPp5h5lu-aCFSSZHOZkz5OZrJv5xd7jtq6Wsa3ZKU/mobilebasic'
