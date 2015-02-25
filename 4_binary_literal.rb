require 'fileutils'
include FileUtils

#给文件赋权限, 权限是8进制表示
#传统做法
#但是0755字面量是有问题的
chmod 755, '1_cut_string.rb' #--wxrw--wt  #这里755是十进制

#获取755 16进制字面量
# U  G  O
# rwxrwxrwx

# 0b111101101

perms = 0b111101101
perms.to_s(8) # => "755" 转化成8进制 0755
chmod perms, '1_cut_string.rb'#-rwxr-xr-x

