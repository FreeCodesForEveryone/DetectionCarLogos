clc 
clear all
close all;

b=imread('audiyazi.jpg');
%a=imread('audi-logo.jpg');
%a=imread('audilogo.jpg');
%a=imread('auudi.jpg');

%a=imread('Ford.bmp');
%a=imread('Ford.png');
%a=imread('fordlogo.png');

%a=imread('landrover-logo.jpg');
%a=imread('landrover.jpg');
%a=imread('Land-Rover-Logo.jpg');

%a=imread('mitsubishi1.jpg');
a=imread('mitsubishi2.png');
%a=imread('mitsubishi3.jpg');

%a=imread('toyota1.jpg'); 
%a=imread('toyota2.png');
%a=imread('toyota3.jpg');

%a=imread('bmw1.png'); 
%a=imread('bmw2.jpg');
%a=imread('bmw3.jpg');


%Ford dedekte etme algoritmasý
B=a(:,:,3);
gri=rgb2gray(a);
C=imsubtract(B, gri);
bw=im2bw(C,0.025);
se=strel('square',3);
erozyon = imerode(bw,se);
delation=imdilate(erozyon,se);
[B L]=bwboundaries(delation);
c=length(B);
if c==7
 disp('Ford');
end


%Land rover dedekte etme algoritmasý
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

%audi dedekte etme algoritmasý
gri2=rgb2gray(a);
bw2=im2bw(gri2,0.8);
[B L]=bwboundaries(bw2);
c2=length(B);
if c2==9
    figure
    imshow(b);
end


%mitsubishi dedekte etme algoritmasý
B3=a(:,:,1);
gri3=rgb2gray(a);
C3=imsubtract(B3,gri3);
bw3=im2bw(C3,0.20);
se=strel('square',3);
erozyon3= imerode(bw3,se);
delation3=imdilate(erozyon3,se);
[B L]=bwboundaries(delation3);
c3=length(B);
if c3==3
 disp('Mitsubishi');
end

%toyota dedekte etme algoritmasý
B4=a(:,:,1);
gri4=rgb2gray(a);
C4=imsubtract(B4,gri4);
bw4=im2bw(C4,0.20);
se=strel('square',3);
erozyon4= imerode(bw4,se);
delation4=imdilate(erozyon4,se);
[B L]=bwboundaries(delation4);
c4=length(B);
if c4==9
 disp('Toyota');
end

%Bmw dedekte etme algoritmasý
B5=a(:,:,3);
gri5=rgb2gray(a);
C5=imsubtract(B5,gri5);
bw5=im2bw(C5,0.25);
[B L]=bwboundaries(bw5);
c5=length(B);
if (c5 >= 1) && (c5 <= 2)
 disp('Bmw');
end

