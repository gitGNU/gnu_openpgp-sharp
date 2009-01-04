docs: build
	monodocer -assembly:bin/Debug/openpgp-sharp.dll -path:docs/api -pretty -name:"OpenPGP#" -importslashdoc:bin/Debug/openpgp-sharp.xml -delete
	monodocs2html -source:docs/api -dest:docs/html
	mdassembler --ecma docs/api --out docs/openpgp-sharp

build:
	mdtool build

distclean: clean
clean:
	rm -rf docs/api docs/html docs/*.tree docs/*.zip
	rm -rf bin/
	rm -rf example/bin/
