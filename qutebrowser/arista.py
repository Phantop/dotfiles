c.url.searchengines['a'] = 'http://aid/{}'
c.url.searchengines['aid'] = c.url.searchengines['a']
c.url.searchengines['bb'] = 'http://bb/{}'
c.url.searchengines['gcs'] = 'cloudsearch.google.com/cloudsearch?={}'
c.url.searchengines['go'] = 'http://go/{}'
c.url.searchengines['grok'] = 'http://opengrok/source/search?project=eos-trunk&full={}'
c.url.searchengines['group'] = 'http://groups/{}'
c.url.searchengines['nav'] = 'tacnav.infra.corp.arista.io/tacnav?version=eos-trunk&targets={}'

search = {
    'a': 'aid',
    'b': 'bb',
    'e': 'go',
    'tn': 'nav',
    'z': 'grok',
    '<Ctrl-g>': 'grok',
}
for a, b in search.items():
    config.bind(a, ':cmd-set-text -s :open ' + b)
    config.bind(a.upper(), ':cmd-set-text -s :open -t ' + b)

c.fonts.default_size = '13pt'
c.url.default_page = 'http://go/cal'
