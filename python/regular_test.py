#!/usr/bin/env python3
import re
str = input("Please input:");
print("The input str is ", str)

"""
print("The re.match(com,str,re.I) str is" , re.match('com', str, re.I).group())
print("The re.match(com,str,re.U) str is" , re.match('com', str, re.U).group())
print("The re.match(com,str,) str is" , re.match('com', str).group())
print("The re.match(com$,str) str is" , re.match('com$', str).group())
"""

"""
re.split(pattern, string[, maxsplit])
按照能够匹配的子串将string分割后返回列表。maxsplit用于指定最大分割次数，不指定将全部分割.
"""
pattern = re.compile(r'\d+')
a = re.split(pattern, str)
print("re.split(pattern, str) is", a)
a = re.split(pattern, str, 2)
print("re.split(pattern, str, 2) is", a)


"""
print("The usage of regular expression for SEARCH")
a=re.search("[\d]", str).group()
print("re.serch(\"[\d]\",str).group() is ", a)
a=re.search('[\d]', str).group()
print("re.serch('[\d]',str).group() is ", a)
a=re.search('a[\d]', str).group()
print("re.serch('a[\d]',str).group() is ", a)
a=re.search('a[\d]+', str).group()
print("re.serch('a[\d]+',str).group() is ", a)


#The advanced usage about group
a=re.search("([0-9])([a-z])", str).group()
print("re.search(\"([0-9])([a-z])\",a).group(0)", a)
a=re.search("([0-9])([a-z])", str).group(1)
print("re.search(\"([0-9])([a-z])\",a).group(1)", a)
a=re.search("([0-9])([a-z])", str).group(2)
print("re.search(\"([0-9])([a-z])\",a).group(2)", a)
a=re.search("([0-9]?)([a-z])", str).group(0)
print("re.search(\"([0-9]?)([a-z])\",a).group(0)", a)
a=re.search("([0-9])*([a-z])", str).group()
print("re.search(\"([0-9])*([a-z])\",a).group(0)", a)
a=re.search("([0-9]*)([a-z])", str).group()
print("re.search(\"([0-9]*)([a-z])\",a).group(0)", a)

#start end span usage which is used to rerun the location of matched string
a=re.search('[\d]', str).start()
print("re.serch('[\d]',str).start() is ", a)
a=re.search('[\d]', str).end()
print("re.serch('[\d]',str).end() is ", a)
a=re.search('[\d]', str).span()
print("re.serch('[\d]',str).span() is ", a)
print("END OF SEARCH")
"""

'''
p=re.match('[\d]',str)
print("re.match('[\d]',str) is ", p)
b=re.findall('[\d]',str)
print("re.findall('[\d]',str) is " ,b)
'''




