����¼:�޸�/ɾ������
����ע����һ�����ȣ���ʾ...more


���jar����
1.mysql����
2.jstl jsp���ı�ǩ��
3.c3p0���ӳ�
4.dbutils��
��
com.domain ʵ����
com.dao �����ݿ���������Ĳ���
com.service ҵ���߼���
com.utils �������(��JDBC��Web���û����������йصĹ�����)
com.web.ctroller  ������ת���йص�servlet
com.web.UI ����ʾҳ���йص�servlet
jsp  ��ʾ��

���ܣ�
��ӿͻ�(�����ظ��ύ)
�鿴�ͻ�
�޸Ŀͻ���Ϣ
ɾ���ͻ�

customer��
create table customer(
	id int(5) primary key auto_increment,
	name varchar(10) not null,
	gender varchar(3) not null,
	birthday date,
	tel varchar(20),
	email varchar(20),
	preference varchar(20),
	description varchar(100)
)charset=utf8;