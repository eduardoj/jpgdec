JPG decoder script
==================



How to use it. Examples
-----------------------

1. Normal invocation:

perl jpgdec t/data/lena_gray.jpg


2. Debug information:

DEBUG=1 perl jpgdec t/data/lena_col444.jpg



Testing
-------

1. All tests:

make test


2. Only one test:

perl t/03-lena_col444.t
