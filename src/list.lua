
--˵����������һ���û�����ף���ʵ�ܼ�
list = nil--����Ǹ�



for i=1,100 do

  --ÿ��list����next���ӵ�֮ǰ��list��ȥ��Ȼ��value���Լ���ֵ
  list = {next=list,value = i}

end

while list do
  print(list.value)
  list =list.next
end
