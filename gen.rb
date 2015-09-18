list = %w{
weibo.com
d.weibo.com
facebook.com
twitter.com
user.qzone.qq.com
myspace.com
v2ex.com
plus.google.com
taobao.com
}

hosts_list = []

list.each do |i|
  ['m.', 'www.', 'mobile.', ''].each do |prefix|
    hosts_list << prefix + i 
  end
end


f = File.new "./hosts", "w+"

hosts_list.each do |i|
  f.puts "127.0.0.1    " + i + "\n"
  f.puts "::1    " + i + "\n"
end

f.close
