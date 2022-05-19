from django.shortcuts import render

# Create your views here.

def home(req):
    return render(req, 'home.html')

def about(req):
    return render(req, 'about.html')

def result(req):
  full = req.GET['fulltext']
  words = full.split()
  words_dic = {}
  for word in words:
    if word in words_dic:
      words_dic[word]+=1 
    else:
      words_dic[word]=1
  return render(req, 'result.html', 
  {'full' : full, 'length' : len(words), 'dic' : words_dic.items()})