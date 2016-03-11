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
