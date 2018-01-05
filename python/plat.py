#!/usr/bin/python3.2
# -*- coding: UTF-8 -*-
#import platform
import os,platform

def platform_type():
    sys = platform.system()
    check_plat = platform.platform()
    print("sys=",sys,"\n")
    print("check_plat=",check_plat, "\n")

print("123")
pwd = os.getcwd()
print(pwd)

platform_type()
