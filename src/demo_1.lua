print (1~=2)
--LUA��nil ��false Ϊ�� ���඼Ϊ��

-- and�Ƚ�ʱ��ֻҪ����false �ͷ���false�����������false �򷵻����һ��ֵ

print (1 and false  and 2)
print(1 and 2 and 3 and 4)
print(1 and 2 and 3 and nil)

-- or �Ƚ�ʱ��ȫ��Ϊfalse �Ż᷵��false ���򷵻ص�һ����Ϊfalse ��ֵ
print(false or 5 or 4)
print(false or false)

--lua ���� .. ���������ַ���