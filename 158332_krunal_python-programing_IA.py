#first file
file1=open("virat.txt","w")
wl=("virat Kohli is an Indian international cricketer and former captain of the Indian national team. \n ","who plays as a right-handed batsman for Royal Challengers Bangalore in the IPL and for Delhi in Indian domestic cricket. \n ","he has total 74 centuries in international cricket. \n ","also more than 25000 runs in international matches. \n ","He has joined indian team in august 2008 against srilanka. \n ","virat kohli was born on 5 november 1988 in Delhi. \n ","India had won the under-19 world cup under kohli's captaincy. \n ","Kohli has a seemingly hot head on his shoulders, but he channels all his anger while he is batting. \n ","he has record of fastest 25000 runs. \n ","his nickname is cheeku")
file1.writelines(wl)
file1.close()
file1=open("virat.txt","r")
content=file1.read()
content1=content.lower()
file1_list=content1.split(" ")
for i in range(len(file1_list)):
  if file1_list[i]=='\n':
    file1_list[i]=""
print("file1_list",file1_list)
print()
dct1={}
for i in file1_list:
  dct1[i]=0
#print(dct1)
for i in file1_list: #finding repetative words in file1 and adding it to dictionary
  for j,k in dct1.items():
    if i==j:
      dct1[j]=k+1
print("dictionary 1:",dct1)
print()

#second file
kb=open("kohli.txt","w")
L=("Virat Kohli was born on 5 November 1988 in Delhi to a Punjabi Khatri Hindu family. \n ","His father, Prem Kohli, worked as a criminal lawyer and his mother, Saroj Kohli, is a housewife. \n ","kohli has an older brother, Vikas, and an older sister, Bhawna. \n ","According to his family, when kohli was three-years old, Kohli would pick up a cricket bat, start swinging it and ask his father to bowl at him. \n ","Kohli first played for Delhi Under-15 team in October 2002 in the 2002–03 Polly Umrigar Trophy. \n ","kohli was the leading run-scorer for his team in that tournament with 172 runs at an average of 34.40. \n ","He became the captain of the team for the 2003–04 Polly Umrigar Trophy; scored 390 runs in 5 innings at an average of 78 including two centuries and two fifties. \n ","In July 2006, Kohli was selected in the India Under-19 squad on its tour of England. \n ","Kohli's romantic association with Bollywood actress Anushka Sharma, which commenced in 2013, earned the duo the moniker of Virushka")
kb.writelines(L)
kb.close()
kb=open("kohli.txt","r")
content_2=kb.read()
content2=content_2.lower()
file2_list=content2.split(" ")
print("file2_list",file2_list)
print()
dct2={}
for i in file2_list:
  dct2[i]=0
#print(dct2)
for i in file2_list:   #finding repetative words in file2 and adding it to dictionary
  for j,k in dct2.items():
    if i==j:
      dct2[j]=k+1
print("dictionary 2:",dct2)
print()

#dct3 for the common words in both files
dct3={}
for i,j in dct1.items():
  for k,l in dct2.items():
    if i==k:
      if j>l:
        dct3[i]=l
      else:
        dct3[i]=j
print("dictionary 3 includes the commom words :",dct3)
print()

# % plagarism
sum=0
for j in dct3.values():
  sum+=j
print("total frequency : ",sum)

total_length=0
if len(file1_list)>len(file2_list):
  total_length=len(file1_list)
else:
  total_length=len(file2_list)
print("max length: ",total_length)

plag_perc=(sum/total_length)*100
print("% plagarism: ",plag_perc)

