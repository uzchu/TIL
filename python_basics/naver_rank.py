import requests
from bs4 import BeautifulSoup

response = requests.get('https://www.naver.com/').text
soup = BeautifulSoup(response,'html.parser')

#rank = soup.select_one('#PM_ID_ct > div.header > div.section_navbar > div.area_hotkeyword.PM_CL_realtimeKeyword_base > div.ah_roll.PM_CL_realtimeKeyword_rolling_base > div > ul > li:nth-child(3) > a > span.ah_k')
#print(rank.text)

ranks = soup.select('#PM_ID_ct > div.header > div.section_navbar > div.area_hotkeyword.PM_CL_realtimeKeyword_base > div.ah_roll.PM_CL_realtimeKeyword_rolling_base > div > ul span.ah_k')
for rank in ranks:
    print(rank.text)


with open('naver_rank.txt','w',encoding="utf-8") as f:
    f.write('네이버 검색어 순위 \n')
    for i,rank in enumerate(ranks):
        f.write(f"{i+1}. {rank.text} \n")
        pass
    f.close()
    pass


