I = imread('111.jpg');%��ȡ����õ�ͼƬ���������ϸ���������Ϊ�߽��ͼƬ
I=rgb2gray(I);           %�Ҷȱ仯
I(I>200)=255;           %��ֵ��
I(I<=200)=0;            %��ֵ��
imshow(I)                 %��ʾͼƬ
 

[y,x] = find(I==0);     %�ҳ����ߵ�����λ��
y = max(y) -y;           %����Ļ����ת��Ϊ����ϵ�Ͽ�����
y = fliplr(y);               %���ҷ�ת����
plot(x,y,'b.','markersize',1)%��ʾת�����ͼ��
[Xx,Yy]= ginput(2);       % ��ȡ�����������ϽǺ����½ǵ�����
 

min_x = min(Xx);
max_x = max(Xx);
min_y= min(Yy);
max_y = max(Yy);
% x1 = (x-Xx(1))*(max_x-min_x)/(Xx(2)- Xx(1))+min_x;
% y1 = (y-Yy(1))*(min_y-max_y)/(Yy(2)- Yy(1))+max_y;
%% ����仯���������ԭ�㲻Ϊ0�������ڸ������ʡȥ����������

xo = -15;%ԭʼͼ���������x
yo = -30;%ԭʼͼ���������x
xl = 30;    %ԭʼͼ��x�᳤
yl=70;      %ԭʼͼ��y�᳤
x1 = (x - min(Xx))*xl/(max(Xx)-min(Xx))+xo ;%���ݵ�xֵ
y1 = (y - min(Yy))*yl/(max(Yy)-min(Yy))+yo;%���ݵ�yֵ
plot(x1,y1,'r.','markersize',2)
axis([-15,15,-30,40])