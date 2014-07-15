if [ ! -f configure ]
then
    ./autogen.sh || exit 1
fi

./configure --build=$BUILD_TRIPLET \
            --host=$HOST_TRIPLET \
            --prefix=$PREFIX \
            --enable-static \
            --enable-shared \
            || exit 1

make && make install

