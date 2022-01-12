host = c.content.blocking.hosts.lists.append
host("https://github.com/Perflyst/PiHoleBlocklist/raw/master/AmazonFireTV.txt")
host("https://github.com/jmdugan/blocklists/raw/master/corporations/twitter/all")
host("https://github.com/jmdugan/blocklists/raw/master/corporations/microsoft/all")
host("https://github.com/jmdugan/blocklists/raw/master/corporations/facebook/all")

abp = c.content.blocking.adblock.lists.append
abp("https://fanboy.co.nz/r/fanboy-ultimate.txt")
abp("https://fanboy.co.nz/fanboy-antifacebook.txt")
abp("https://secure.fanboy.co.nz/fanboy-annoyance.txt")
abp("https://secure.fanboy.co.nz/fanboy-cookiemonster.txt")
abp("https://easylist-downloads.adblockplus.org/antiadblockfilters.txt")
abp("https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt")
