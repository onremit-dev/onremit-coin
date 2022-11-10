#/bin/sh -x

#
git clone git@github.com:onremit-dev/onremit-coin.git
git remote add upstream https://github.com/litecoin-project/litecoin.git
git fetch upstream
git merge upstream/master
git push


cd src/doc/man ; rename 's/litecoin/onremit/g' *
cd src/doc ; mv litecoin-release-notes onremit-release-notes

./autogen.sh
./contrib/install_db4.sh `pwd`
export BDB_PREFIX="`pwd`/db4"
echo $BDB_PREFIX
./configure BDB_LIBS="-L${BDB_PREFIX}/lib -ldb_cxx-4.8" BDB_CFLAGS="-I${BDB_PREFIX}/include"
