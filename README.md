# JPG decoder script

## Description

This perl script takes a jpg file as its first argument, and prints as result the ASCII encoding of a .pgm or .ppm file, based on the format of the .jpg input file.

It currently supports as input file the following:
* Gray images.
* Color images, with 4:4:4 subsampling.
* Color images, with 4:1:1 subsampling.


## Usage (by examples)

* Normal invocation:

```
$ perl jpgdec t/data/lena_gray.jpg
```

* Debug information:

```
$ DEBUG=1 perl jpgdec t/data/lena_col444.jpg
```


## Testing

* All tests:

```
$ make tests
```

* Only one test:

```
$ perl t/03-lena_col444.t
```


## References

* [https://en.wikipedia.org/wiki/JPEG](https://en.wikipedia.org/wiki/JPEG)
* [https://www.w3.org/Graphics/JPEG/itu-t81.pdf](https://www.w3.org/Graphics/JPEG/itu-t81.pdf)
* [https://www.w3.org/Graphics/JPEG/jfif3.pdf](https://www.w3.org/Graphics/JPEG/jfif3.pdf)
* [https://en.wikipedia.org/wiki/Chroma\_subsampling#Sampling\_systems\_and\_ratios](https://en.wikipedia.org/wiki/Chroma_subsampling#Sampling_systems_and_ratios)
* [http://lea.hamradio.si/~s51kq/V-BAS.HTM](http://lea.hamradio.si/~s51kq/V-BAS.HTM)
* [http://dougkerr.net/pumpkin/articles/Subsampling.pdf](http://dougkerr.net/pumpkin/articles/Subsampling.pdf)
* [https://en.wikipedia.org/wiki/Netpbm\_format](https://en.wikipedia.org/wiki/Netpbm_format)
