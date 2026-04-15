Aim: Performing encoding and decoding of images using deep autoencoder.
import keras
from keras import layers
from keras.datasets import mnist
import numpy as np encoding_dim=32 #this is our input image
input_img=keras.Input(shape=(784,))

encoded=layers.Dense(encoding_dim, activation='relu')(input_img) 

decoded=lavers Dense(784, activation='sigmoid')(encoded)

autoencoder=keras Model(input img decoded)

encoder=keras Model(input img encoded)

encoded input-keras Input(shape=(encoding dim,))

decoder laver autoencoder lavers[-1]

decoder=keras Model(encoded input decoder layer(encoded input)

autoencoder compile(optimizer='adam' loss='binary crossentropy')


(X train. ).(X test. )=mnist.load data!)

X train=X train astype('float32')/255.

X test=X test astype('float32')/255.

X train=X train.reshape((len(X_train),np.prod(X_train.shape[1:])))

X test=X test reshape((len(X test).np.prod(X test shape[1:])))

print(X train shape)

print(X test shape)


autoencoder fit(X train X train,

epochs=50,
batch_size=256, 
shuffle=True,
validation_data=(X_test,X_test)) 
encoded_imgs=encoder.predict(X_test) decoded_imgs=decoder.predict(encoded_imgs)

import matplotlib pyplot as plt

n = 10 # How many digits we will display
plt.figure(figsize=(40,4))
for į in range(10):


ax = plt subplot(3, 20, į+1)

plt imshow(X test[il.reshape(28, 28))

plt gray(

ax get xaxis().set visible(False)

ax get vaxis() set visible(False)

ax = plt. subplot(3, 20, į+1+20)

plt imshow(encoded imgs[il.reshape(8,4))

plt gray()

ax get xaxis() set visible(False)

ax get vaxis ) set visible(False)


ax = plt subplot(3, 20, 2*20 +į+ 1)

plt imshow(decoded imgs[il.reshape(28,28))

plt gray()

ax get xaxis() set visible(False)|

ax get vaxis() set visible(False)

plt.show()
