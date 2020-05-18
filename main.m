clear all;
close all;
clc;

image = imread("meh.jpg");
%simshow(image);
new_image = addText(image,'hello');
extract(new_image);
elIm = imread("film_27.bmp");
extract(elIm)