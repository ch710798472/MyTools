@echo off
@echo +-----------------------------------------------+
@echo 本程序消除文件夹被病毒隐藏的文件，请复制到文件夹里
@echo 面使用。
@ECHO 可能需要一段时间，请耐心等待
attrib -s -h *. /S /D
attrib +s +h System~1
attrib +s +h Recycled
attrib +s +h +a ntldr
@ECHO 完成！
@echo on