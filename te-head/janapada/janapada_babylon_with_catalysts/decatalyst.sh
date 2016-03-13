sed -i  '/qqqq/s/#VGH#/#/' ./*.html
sed -i  '/qqqq/s/#VGN#/#/' ./*.html

sed -i  '/qqqq/s/#VPT#/#/' ./*.html
sed -i  '/qqqq/s/#VPH#/#/' ./*.html
sed -i  '/qqqq/s/#VPE#/#/' ./*.html
sed -i  '/qqqq/s/#DHR#/#/' ./*.html

sed -i  '/qqqq/s/#IUP#/#/' ./*.html
sed -i  '/qqqq/s/#IUI#/#/' ./*.html
sed -i  '/qqqq/s/#PPP#/#/' ./*.html
sed -i  '/qqqq/s/#NNN#/#/' ./*.html
sed -i  '/qqqq/s/#DDD#/#/' ./*.html
sed -i  '/qqqq/s/#QQ#/#/' ./*.html
sed -i  '/qqqq/s/xxx#/#/' ./*.html
sed -i  '/qqqq/s/#@@@//' ./*.html

sed -i '/qqqq/s/#/|/g' ./*.html
sed -i 's/ *qqqq *| *//' ./*.html
sed -i 's/ *zzzz *//' ./*.html
sed -i 's/౛/జ/g' ./*.html
