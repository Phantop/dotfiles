host = c.content.blocking.hosts.lists.append
host("https://www.github.developerdan.com/hosts/lists/facebook-extended.txt")

c.content.blocking.adblock.lists = []
abp = c.content.blocking.adblock.lists.append
abp("https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt")
abp("https://easylist-downloads.adblockplus.org/antiadblockfilters.txt")
abp("https://fanboy.co.nz/fanboy-antifacebook.txt")
abp("https://fanboy.co.nz/fanboy-cookiemonster.txt")
abp("https://fanboy.co.nz/r/fanboy-ultimate.txt")

abp("https://github.com/DandelionSprout/adfilt/raw/master/AnnoyancesList")
abp("https://github.com/DandelionSprout/adfilt/raw/master/ExtremelyCondensedList.txt")
abp("https://github.com/DandelionSprout/adfilt/raw/master/LegitimateURLShortener.txt")
abp("https://github.com/DandelionSprout/adfilt/raw/master/SocialShareList.txt")

abp("https://github.com/hagezi/dns-blocklists/raw/main/adblock/pro.mini.txt")
abp("https://github.com/iam-py-test/uBlock-combo/raw/main/list.txt")
abp("https://github.com/liamengland1/miscfilters/raw/master/antipaywall.txt")
abp("https://github.com/mchangrh/yt-neuter/raw/main/yt-neuter.txt")
abp("https://github.com/yokoffing/filterlists/raw/main/privacy_essentials.txt")
