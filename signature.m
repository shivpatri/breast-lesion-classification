function data = signature(img)
% Abstract - 
% Calculates the polar co-ordinates of the points on the boundary of the cancerous mass
% with the centre of the mass as the origin.
% data = signature(Img) outputs the co-ordinates of the boundary in polar form
% Functions used - im2bw,double,size,round,cat,sortrows
%% Initiation of useful variables
img = double(im2bw(img));
sz = size(img); %size of the image.
mean = [0 0];   %mean of the image.
aggr = 0;       %aggregate of all the pixel intensities in the image.
data = [];      %Values of the polar co-ordinates.
                %as the program progresses data will have two columns.
                %first column contains angle coordinate(in degrees) and second
                %contains radial coordinate
%% code for finding the centre of the boundary

for i = 1:sz(1)
    for j = 1:sz(2)
        aggr = img(i,j)+ aggr;
        mean(1)=i*img(i,j)+ mean(1);
        mean(2)=j*img(i,j)+ mean(2); 
    end
end

% Calculating the weighted mean of the image,which is the centre of the boundary
mean = round(mean/aggr);

%% Calculating the co-ordinates
% calculating in clock-wise direction

for i = 1:sz(1)
    for j = 1:sz(2)
        if img(i,j)==1;
        data = cat(1,data,[atan2d((j-mean(2)),(i-mean(1))) sqrt(((i-mean(1)).^2)+((j-mean(2)).^2))]);
        end
    end
end

data = sortrows(data);

% data(:,2) = 10*data(:,2)/max(data(:,2));
% Normalized to 0 to 100.
end