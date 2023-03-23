kb=open("kohli.txt","w")
L=("Virat Kohli was born on 5 November 1988 in Delhi to a Punjabi Khatri Hindu family.\n","His father, Prem Kohli, worked as a criminal lawyer and his mother, Saroj Kohli, is a housewife.\n","kohli has an older brother, Vikas, and an older sister, Bhawna.\n","According to his family, when kohli was three-years old, Kohli would pick up a cricket bat, start swinging it and ask his father to bowl at him.\n","Kohli first played for Delhi Under-15 team in October 2002 in the 2002–03 Polly Umrigar Trophy.\n","kohli was the leading run-scorer for his team in that tournament with 172 runs at an average of 34.40.\n","He became the captain of the team for the 2003–04 Polly Umrigar Trophy; scored 390 runs in 5 innings at an average of 78 including two centuries and two fifties.\n","In July 2006, Kohli was selected in the India Under-19 squad on its tour of England.\n","Kohli's romantic association with Bollywood actress Anushka Sharma, which commenced in 2013, earned the duo the moniker of Virushka")
kb.writelines(L)
kb.close()

kb=open("kohli.txt","r")
content=kb.read()
content_list=content.lower()
content_list=content_list.split(" ")
kb.close()
print(content_list)

dct={}
for i in content_list:  
  dct[i]=0
for i in content_list:  
  for j,k in dct.items():   
      if i==j:     
        dct[j]=k+1
print(dct)

file2=open("virat.txt","w")
wl=("Virat Kohli is an Indian international cricketer and former captain of the Indian national team.\n","who plays as a right-handed batsman for Royal Challengers Bangalore in the IPL and for Delhi in Indian domestic cricket.\n ","he has total 74 centuries in international cricket.\n","also more than 25000 runs in international matches.\n ","He has joined indian team in august 2008 against srilanka.\n","virat kohli was born on 5 november 1988 in Delhi.\n","India had won the under-19 world cup under kohli's captaincy.\n","Kohli has a seemingly hot head on his shoulders, but he channels all his anger while he is batting.\n","he has record of fastest 25000 runs.\n","his nickname is cheeku.")
file2.writelines(wl)
file2.close()

file2=open("virat.txt","r")
# print(file2.read())
file2.close()

file2=open("virat.txt","r")
content1=file2.read()
content1_list=content1.lower()
content1_list=content1_list.split(" ")
print(content1_list)
file2.close()

dct1={}
for i in content1_list:
  dct1[i]=0
for i in content1_list:
  for j,k in dct1.items():
      if i==j:
        dct1[j]=k+1
print(dct1)

for i,j  in dct.items():
  for m,n in dct1.items():
    if i==m:
      if j>=n:
        print(i,":",n)
      else:
        print(i,":",j)