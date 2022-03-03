clear all;close all; clc
G=tf(10500000,[1 1600 10500000]);
linearSystemAnalyzer(G)