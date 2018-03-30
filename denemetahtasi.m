clc 
clear all
close all;


%Ford örnek algoritma
%a=imread('Ford.bmp');
%a=imread('Ford.png');
%a=imread('fordlogo.png');
B=a(:,:,3);
gri=rgb2gray(a);
C=imsubtract(B, gri);
bw=im2bw(C,0.025);
se=strel('square',3);
erozyon = imerode(bw,se);
delation=imdilate(erozyon,se);
[B L]=bwboundaries(delation);
c=length(L);
subplot(1,4,1)
imshow(a);
subplot(1,4,2)
imshow(gri);
subplot(1,4,3)
imshow(bw);
subplot(1,4,4);
imshow(delation);



%Landrover algoritma ornegi
%a=imread('landrover.jpg');
%a=imread('landrover-logo.jpg');
%a=imread('Land-Rover-Logo.jpg');
B1=a(:,:,2);
gri1=rgb2gray(a);
C1=imsubtract(B1, gri1);
bw1=im2bw(C1,0.025);
se=strel('square',3);
erozyon1=imerode(bw1,se);
delation1=imdilate(erozyon1,se);
[B L]=bwboundaries(delation1);
c1=length(B);
if (c1 >= 21) && (c1 <= 23)
 disp('Landrover');
end
subplot(1,4,1)
imshow(a);
subplot(1,4,2)
imshow(gri1);
subplot(1,4,3);
imshow(bw1);
subplot(1,4,4);
imshow(delation1);



a=imread('toyota1.jpg'); 
%a=imread('toyota2.png');
%a=imread('toyota3.jpg');
B4=a(:,:,1);
gri4=rgb2gray(a);
C4=imsubtract(B4,gri4);
bw4=im2bw(C4,0.20);
se=strel('square',3);
erozyon4= imerode(bw4,se);
delation4=imdilate(erozyon4,se);
[B L]=bwboundaries(delation4);
c4=length(B)
subplot(1,4,1);
imshow(a);
subplot(1,4,2);
imshow(gri4);
subplot(1,4,3);
imshow(bw4);
subplot(1,4,4);
imshow(delation4);



