#!/bin/sh -x
find ./ -type f -readable -writable -exec sed -i "s/Litecoin/OnRemit/g" {} \;

find ./ -type f -readable -writable -exec sed -i "s/LiteCoin/OnRemit/g" {} \;

find ./ -type f -readable -writable -exec sed -i "s/LTC/ONREMIT/g" {} \;

find ./ -type f -readable -writable -exec sed -i "s/litecoin/onremit/g" {} \;

find ./ -type f -readable -writable -exec sed -i "s/litecoind/onremitd/g" {} \;

find ./ -type f -readable -writable -exec sed -i "s/lites/notes/g" {} \;
find ./ -type f -readable -writable -exec sed -i "s/photons/coins/g" {} \;
