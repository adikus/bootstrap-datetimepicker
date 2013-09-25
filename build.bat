@ECHO off
mkdir build
cd build
mkdir js
mkdir css
cd ..
node node_modules/less/bin/lessc --yui-compress --include-path=bootstrap/less src/less/bootstrap-datetimepicker.less build/css/bootstrap-datetimepicker.min.css      
uglifyjs --comments -o build/js/bootstrap-datetimepicker.min.js src/js/bootstrap-datetimepicker.js