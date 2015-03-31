%signature plotting and Coefficients of approximated signature function
close all
clear all
clc
img = double(im2bw(imcrop(imread('E:\Research\Project\Borders\C6B.jpg'))));
%reads,crops,thresholds and converts to double
%imshow(img);
sz = size(img);                                                           
mean = [0 0];
aggr = 0;
for i = 1:sz(1)
    for j = 1:sz(2)
        aggr = img(i,j)+ aggr;
        mean(1)=i*img(i,j)+ mean(1);
        mean(2)=j*img(i,j)+ mean(2);     
    end
end
%Calculating weighted mean from weighted sum by dividing with corresponding
%dimensions and rounding it off to the nearest whole number
mean = round(mean/aggr);
%img(mean(1),mean(2))=255;
%imshow(img);
rt = [];
%rt stands for radius and tangent inverse,these are the polar co-ordinates
%of the each and every pixel in the image.Note that the tangent inverse
%calculated is in clock-wise direction
for i = 1:sz(1)
    for j = 1:sz(2)
        if img(i,j)==1;
        rt = cat(1,rt,[atan2d((j-mean(2)),(i-mean(1))) sqrt(((i-mean(1)).^2)+((j-mean(2)).^2))]);
        end
    end
end
rt = sortrows(rt);
sz2 = size(rt);
stem(rt(:,1),rt(:,2),'g');
hold on
p=polyfit(rt(:,1),rt(:,2),15);
t = rt(:,1);
r = polyval(p,t);
plot(t,r,'r');
hold off
corr = (corr2(rt(:,2),r)).^2;
len = length(r);
stderr = sum(abs(rt(:,2)-r))/len;