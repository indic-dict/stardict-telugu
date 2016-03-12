sed -i  '/qqqq/s/#VPT#/#/' ./*.babylon
sed -i  '/qqqq/s/#VPH#/#/' ./*.babylon
sed -i  '/qqqq/s/#VPE#/#/' ./*.babylon
sed -i  '/qqqq/s/#DHR#/#/' ./*.babylon

sed -i  '/qqqq/s/#IUP#/#/' ./*.babylon
sed -i  '/qqqq/s/#IUI#/#/' ./*.babylon
sed -i  '/qqqq/s/#PPP#/#/' ./*.babylon
sed -i  '/qqqq/s/#NNN#/#/' ./*.babylon
sed -i  '/qqqq/s/#DDD#/#/' ./*.babylon
sed -i  '/qqqq/s/#QQ#/#/' ./*.babylon
sed -i  '/qqqq/s/xxx#/#/' ./*.babylon
sed -i  '/qqqq/s/#@@@//' ./*.babylon

sed -i '/qqqq/s/#/|/g' ./*.babylon
sed -i 's/ *qqqq *| *//' ./*.babylon
sed -i 's/ *zzzz *//' ./*.babylon
sed -i 's/౛/జ/g' ./*.babylon
