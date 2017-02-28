#sed -i '1,/<BODY/d; s/\t//g;' ./kosha3_[12].html
#tr '\n' '\t' <kosha3_1.html > tmp1 && tr '\n' '\t' < kosha3_2.html > tmp2
#sed -i 's/0950535009505350/\n/g;' tmp[12] && sed -i 's/$/\n/;' tmp1 && sed -i 's/^/\n/;' tmp2 && paste tmp1 tmp2 | sed 's/^\t\|\t$//; s/\r//g;' > mula.html  
sed 's/\t/\n/g;' mula.html > mula0.html
sed 's/\t//g; s/<\/FONT>/✔/g;' ./mula0.html | tr '\n' '\t' | sed 's/<FONT COLOR[^<>]*>\([^✔]*\)✔/\1/g; s/✔/<\/FONT>/g;' > tmp1
sed 's/\t</\n</g; s/\t/ /g;' tmp1 > mula1.html&& rm mula0.html
sed -i 's/\r//g;' mula1.html
sed 's/<T[RDA][^<>]*>//g; s/<\/T[RDA][^<>]*>//g;' mula1.html|sed '/^ *$/d' >mula2.html && rm mula1.html
sed -i 's/<FONT[^<>]*>\( *\)<\/FONT>/\1/g;' mula2.html
tr '\n' '\t' < mula2.html|sed 's/<\/p>\( *\)\t<p><FONT FACE="Times-Bold[I,][^<>\t]*>/<\/p>\n<p><FONT FACE="head1">/g;' |sed 's/\t/ /g;' >mula3.html && rm mula2.html
sed -i 's/^<p><FONT FACE="head1"><B>[a-z]<\/B><\/FONT><\/p> *<BR> *<p><FONT FACE="Times-Bold[,I][^<>\t]*>/<p><FONT FACE="head1">/;1s/^.*<p><FONT FACE="Times-Bold[,I][^<>\t]*/<p><FONT FACE="head1">/;' mula3.html
sed -i 's/   */ /g; s/<B>/✔/g; s/<\/B>/◑/g; s/<I>/☆/g; s/<\/I>/☀/g; s/<\/FONT>/↰/g; s/<BR>/↶/g; s/<\/p>/↷/g; s/ *$//; ' mula3.html
sed -i 's/✔\( *\)◑/\1/g; s/☆\( *\)☀/\1/g; s/<FONT[^<>\t]*>\([ ,\.]*\)↰/\1/g;' mula3.html
sed -i 's/<FONT \([^<>\t↷]*\)>\([✔☆]*\)\([^↷↰]*[^↷↰✔☆]\)\([◑☀]*\)\↰\( *\)↷\( *\)<p><FONT \1>\2/<FONT \1>\2\3\5\6/g;' mula3.html
sed -i 's/<FONT \([^<>\t↷]*\)>\([✔☆]*\)\([^↷↰]*[^↷↰✔☆]\)\([◑☀]*\)\↰\( *\)↷\( *\)<p><FONT \1>\2/<FONT \1>\2\3\5\6/g;' mula3.html
sed -i 's/<FONT \([^<>\t↷]*\)>\([✔☆]*\)\([^↷↰]*[^↷↰✔☆]\)\([◑☀]*\)\↰\( *\)↷\( *\)<p><FONT \1>\2/<FONT \1>\2\3\5\6/g;' mula3.html
sed -i 's/  */ /g; s/<FONT \([^<>\t↷]*\)>\([✔☆]*\)\([^↷↰]*[^↷↰✔☆]\)\([◑☀]*\)\↰\( *\)<FONT \1>\2/<FONT \1>\2\3\5/g;s/  */ /g;' mula3.html
sed 's/◑/♚/g; s/☆/♛/g; s/☀/♝/g; s/↶/☚/g; s/↷/☛/g; ' mula3.html > mula4.html && rm mula3.html
sed -i 's/\(<FONT FACE="Anupama[^<>\t↰]*>\)\([^↰]*\)↰/\1\n☁\2❄\n↰/g;' mula4.html
cp mula4.html పరీక్ష.txt
bash  decode.sh&& mv ప_ఫలితం.txt mula5.html
mv mula5.html mula5.1.html
tr '\n' '\t' <mula5.1.html | sed 's/\t☁//g; s/❄\t//g; s/\t/\n/g; s/♚/◑/g; s/♛/☆/g; s/♝/☀/g; s/☚/↶/g; s/☛/↷/g; ' > mula6.html && rm mula5.1.html
#sed 's/✔/<B>/g; s/◑/<\/B>/g; s/☆/<I>/g; s/☀/<\/I>/g; s/↰/<\/FONT>/g; s/↶/<BR>/g; s/↷/<\/p>/g; ' mula6.html |sed '1s/^/<HEAD><META HTTP-EQUIV="Content-Type" CONTENT="text\/html; CHARSET=utf-8"><\/HEAD><BODY><div style="max-width:50em; margin:0 auto 0 auto ; border: 1px solid black; padding:2em" >\n/;' > mula6.9.html
sed  's/\([ాిీుూృౄెేైొోౌ]\)  *్\([కఖగఘఙచఛజఝఞటఠడఢణతథదధనపఫబభమయరలవశషసహఱళ]\)/్\2\1/g; s/\&nbsp;↶/ /g; s/  *్/్/g; ' mula6.html > mula6.1.html && rm mula6.html
sed -i 's/\(<p><FONT FACE="head1">[^↰]*\)↰\( *\)<FONT FACE="Times-Roman,[^<>]*>\( *\)(/\1\2\3(/g;s/\(<p><FONT FACE="head1">[^↰]*\)↰\( *\)<FONT FACE="Times-BoldItalic,[^<>]*>/\1\2/; s/ *<p><FONT FACE="AnupamaMedium,[^<>]*> *ర≠ *↰ *↷ *//g; s/ *<p><FONT FACE="AnupamaMedium,[^<>]*> *ఢ *↰ *↷ *//g;s/\(<FONT FACE="A[^↰]*\)↰ *↷ *<p> *<FONT FACE="A[^<>]*>/\1 /g;s/\(<FONT FACE="Times-Italic,[^↰]*↰\)\( *\)↷\( *\)<p>\( *<FONT FACE="A\)/\1\2\3\4/g;s/\(<FONT FACE="head1">[^↰]*↰\)\( *\)↷\( *\)<p>\( *<FONT FACE="A\)/\1\2\3\4/g;s/\(<FONT FACE="A[^↰]*\)↰\([ ,\.;]*\)↷ *<p> *<FONT FACE="A[^<>]*>/\1\2/g;s/↷\( *\)<p>\( *\)\(<FONT FACE="Times-Italic,\)/\1\2\3/g;' ./mula6.1.html
sed 's/↷.*$/↷/; s/  */ /g; s/<FONT FACE="Times-Italic,[^<>]*>/<FONT FACE="bsbg">/g;'  mula6.1.html > mula6.2.html && rm mula6.1.html
sed -i 's/\(<FONT FACE="head1">[^↰]*\)↰<FONT FACE="Times-Bold,[^<>]*>/\1/;s/↰\( *\)<FONT FACE="Times-Bold,[^<>]*>/;\1/g;s/\(<FONT FACE="A[^<>]*>[^↰]*\)↰\( *\)<FONT FACE="A[^<>]*>/\1;\2/g; ' mula6.2.html
sed 's/<FONT FACE="bsbg"[^<>]*>\([^↰]*\)↰/♛<span class="vyvhr_span_bsbg">\1☚/g; s/<FONT FACE="head1">\([^↰]*\)↰/<div class="vyvhr_shirshika"><span class="vyvhr_span_shirshika">\1☚♝/;' mula6.2.html > mula6.3.html && rm mula6.2.html
sed -i 's/♛\([^♛☁]*\)♛/♛\1☁♛/g; s/♛\([^♛☁]*\)♛/♛\1☁♛/g; s/♛\([^♛☁]*\)♛/♛\1☁♛/g;s/↷$/☁↷/; /♛/!s/♝/&♛/;s/<FONT FACE="A[^<>]*>/<div class="vyvhr_vivaraNa">/g; s/  */ /g; s/<div class="vyvhr_vivaraNa">/&☛/g; s/☛\([^↰;☛☁⁜]*;\) */☛<div class="vyvhr_nanartha">\1⁜/g; ' ./mula6.3.html
for((i=1;i<=7;i++));do
sed -i 's/⁜\([^↰;☛☁⁜]*;\) */⁜<div class="vyvhr_nanartha">\1⁜/g;' ./mula6.3.html
done
sed -i 's/\([⁜☛]\)\([^↰;☛☁⁜]*\)↰/\1<div class="vyvhr_nanartha">\2;⁜↰/g;s/☛//g; s/<div class="vyvhr_nanartha">/⁛/g;s/⁛ *\([^⁛⁜↰,;\.]*[^⁛⁜↰,;\. ]\) *\([,;\.]\)/⁛<span class="padartha">\1♞\2 /g;' mula6.3.html
for((i=1;i<=10;i++));do
sed -i 's/\(♞[,\.] \) *\([^⁛⁜↰,;♞\.]*[^⁛⁜♞↰,;\. ]\) *\([,;\.]\)/\1<span class="padartha">\2♞\3 /g;' mula6.3.html
done
sed  's/<span class="padartha">/&♜/g; ' ./mula6.3.html > mula6.4.html && rm mula6.3.html
sed -i 's/♜\([^()\/♜♞ ]*\)♞/♜<a class="vyvhr_a_pada" href="\1">\1❄♞/g;s/♜\(([^{}♜,;]*) *\)*\([^()\/♜♞ ]*\)\( *\)\(([^{}♜,;]*) *\)*♞/♜\1<a class="vyvhr_a_pada" href="\2">\2❄\3\4♞/g;s/♜\([^()\/♜♞ ]*\)  *\([^()\/♜♞ ]*\)♞/♜<a class="vyvhr_a_pada" href="\1">\1❄ <a class="vyvhr_a_pada" href="\2">\2❄♞/g;' mula6.4.html
sed 's/^.*<span class="vyvhr_span_shirshika"> *\([^☚]*[^☚ ]\) *☚.*$/\1/;s/^>//;' mula6.4.html > h_ang1.txt
sed -i 's/^☆✔\([^☆✔◑☀]*[^☆✔◑☀ ]\) *◑☀ *$/\1/; s/^✔\([^☆✔◑☀]*[^☆✔◑☀ ]\) *◑ *$/\1/; s/<[^<>]*>//g; s/^[✔☆◑☀][✔☆◑☀]*\([^☆✔◑☀]*[^☆✔◑☀ ]\) *[☆✔◑☀][☆✔◑☀(= ]*\([^☆✔◑☀()]*[^☆✔◑☀ ()]\) *)* *[☆✔◑☀ ()]*$/\1|\2/g; s/^\(.*\)|\(of .*$\)/\1|\1 \2/g; s/^\(.*\) of *|\(.*\)$/\1 of \2|\2/g; s/[✔☆◑☀]//g; s/^/⁛/; s/|[ |]*/⁜⁛/g; s/ *$/⁜/g; s/\&amp;/;/g; /[A-Z][A-Z]\|\./!s/⁛\([^⁜⁛|,]*[^⁜⁛|, ]\) *, *\([^⁜⁛|,]*[^⁜⁛|, ]\) *⁜/⁛\1⁜⁛\2 \1⁜/g;  s/\/(\([^()⁜⁛]*\))/\/\1/g; s/([\/=]\([^()⁜⁛]*\))/\/\1/g; s/⁛\([^⁜⁛]*[^⁜⁛ ]\)\( *\)( *\([A-Za-z] *[A-Z\.][^()⁜⁛ ]*\)) *⁜/⁛\1⁜⁛\3⁜/g;   s/⁛\( *\)\([A-Za-z] *[A-Z\.][^()⁜⁛ ]*\) *( *\([^⁜⁛]*[^⁜⁛]\)) *⁜/⁛\2⁜⁛\3⁜/g;s/⁛\([^⁛⁜()][^⁛⁜()]*\)(\([^⁛⁜()][^⁛⁜()]*\))\([^⁛⁜()][^⁛⁜()]*\)(\([^⁛⁜()][^⁛⁜()]*\))\([^⁛⁜()]*\)⁜/⁛\1\3(\4)\5⁜⁛\1\2\3(\4)\5⁜/g;s/⁛\([^⁛⁜()][^⁛⁜()]*\)(\([^⁛⁜()][^⁛⁜()]*\))\([^⁛⁜()]*\)⁜/⁛\1\3⁜⁛\1\2\3⁜/g; s/⁛ *\([^⁛⁜\/ ]*[^⁛⁜\/ ]\) *\/ *\([^⁛⁜\/ ]*[^⁛⁜\/ ]\) *⁜/⁛\1⁜⁛\2⁜/g; s/⁛ *\([^⁛⁜\/]*[^⁛⁜\/ ]\)  *\([^⁛⁜\/ ]*[^⁛⁜\/ ]\) *\/ *\([^⁛⁜\/ ]*[^⁛⁜\/ ]\) *⁜/⁛\1 \2⁜⁛\1 \3⁜/g;s/⁛ *\([^⁛⁜\/ ]*[^⁛⁜\/ ]\) *\/ *\([^⁛⁜\/ ]*[^⁛⁜\/ ]\)  *\([^⁛⁜\/ ]*[^⁛⁜\/ ]\) *⁜/⁛\1 \3⁜⁛\2 \3⁜/g; s/⁛\([^⁛⁜\/]*[^⁛⁜\/ ]\) *\/ *\([^⁛⁜\/]*[^⁛⁜\/ ]\) *⁜/⁛\1⁜⁛\2⁜/g;s/[()]/⁜⁛/g; s/⁛ *⁜//g;s/ *\([⁜⁛]\) */\1/g;s/⁛*\([^⁛⁜-]*[^⁛⁜ -]\)\( *- *\)\([^⁛⁜]*[^⁛⁜]\)⁜/&⁛\1 \3⁜/g;' h_ang1.txt
sed  's/⁜⁜*/⁜/g; s/⁛⁛*/⁛/g; s/^[^⁜⁛♜♞]*⁛/⁛/g; s/⁜[^⁜⁛]*⁛/⁜⁛/g; s/⁜[^⁜⁛]*$/⁜/; s/⁛[^♜♞⁛⁜]*♜/⁛♜/g; s/(\([^()♜♞⁜⁛]*\)♞\([^()♜♞⁜⁛<>]*\)<span class="padartha">♜/(\1\2/g; s/(\([^()♜♞⁜⁛]*\)♞\([^()♜♞<>⁜⁛]*\)<span class="padartha">♜/(\1\2/g;  ' mula6.4.html > h_tel1.txt
for((i=1;i<=6;i++));do
sed -i 's/(\([^()♜♞⁜⁛]*\)♞\([^()⁜⁛<>]*\)<span class="padartha">♜/(\1\2/g;' h_tel1.txt
done
sed -i 's/♞[^♜♞⁜⁛]*[<>][^♜♞⁜⁛]*♜/♞♜/g; s/♞[^♜♞⁜⁛]*⁜/♞⁜/g;  s/♜<a class[^<>]*> *\([^♜♞⁜⁛]*[^♜♞⁜⁛ ]\) *♞/♜\1♞/g;s/<a[^<>]*>\|❄//g;s/⁛/ॐ/g; s/⁜/卐/g; s/♜/♜⁛/g; s/♞/⁜♞/g; s/([\/=]\([^()⁜⁛♜♞]*\))/\/\1 /g;s/([^()]*[⁜♞卐ॐ♜⁛][^()]*)//; s/ॐ[◑⁜♞ ✔♜⁛]*卐//g; s/^[^ॐ].*$//;s/⁛\([^⁛⁜()]*\)(\([^⁛⁜()][^⁛⁜()]*\))\([^⁛⁜]*\)⁜/⁛\1\3⁜⁛\1\2\3⁜/g; s/⁛\([^⁛⁜()]*\)(\([^⁛⁜()][^⁛⁜()]*\))\([^⁛⁜]*\)⁜/⁛\1\3⁜⁛\1\2\3⁜/g; s/  *ం/ం/g; s/⁛ *\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\)\([ \/]\)\([^⁛⁜]*\)⁜/⁛\1\3\4⁜⁛\2\3\4⁜/g; s/⁛ *\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\)\([ \/]\)\([^⁛⁜]*\)⁜/⁛\1\3\4⁜⁛\2\3\4⁜/g; s/⁛ *\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\)\([ \/]\)\([^⁛⁜]*\)⁜/⁛\1\3\4⁜⁛\2\3\4⁜/g; s/⁛\([^⁛⁜]*\)\([ \/]\)\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\) *⁜/⁛\1\2\3⁜⁛\1\2\4⁜/g; s/⁛ \([^⁛⁜]*\)\([ \/]\)\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\) *⁜/⁛\1\2\3⁜⁛\1\2\4⁜/g;s/⁛ \([^⁛⁜]*\)\([ \/]\)\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\) *⁜/⁛\1\2\3⁜⁛\1\2\4⁜/g;s/⁛ *\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\) *⁜/⁛\1⁜⁛\2⁜/g; s/⁛\([^⁛⁜]*\)\([ \/]\)\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\) *⁜/⁛\1\2\3⁜⁛\1\2\4⁜/g; s/⁛ \([^⁛⁜]*\)\([ \/]\)\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\) *⁜/⁛\1\2\3⁜⁛\1\2\4⁜/g;s/⁛ \([^⁛⁜]*\)\([ \/]\)\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\) *⁜/⁛\1\2\3⁜⁛\1\2\4⁜/g;s/⁛\([^⁛⁜]*\)\([ \/]\)\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\)\([ \/]\)\([^⁛⁜]*\)⁜/⁛\1\2\3\5\6⁜⁛\1\2\4\5\6⁜/g; s/⁛\([^⁛⁜]*\)\([ \/]\)\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\)\([ \/]\)\([^⁛⁜]*\)⁜/⁛\1\2\3\5\6⁜⁛\1\2\4\5\6⁜/g; s/⁛\([^⁛⁜]*\)\([ \/]\)\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\)\([ \/]\)\([^⁛⁜]*\)⁜/⁛\1\2\3\5\6⁜⁛\1\2\4\5\6⁜/g; s/⁛\([^⁛⁜]*\)\([ \/]\)\([^⁛⁜\/ ]*\) *\/ *\([^⁛⁜\/ ][^⁛⁜\/ ]*\)⁜/⁛\1\2\3⁜⁛\1\2\4⁜/g;'  h_tel1.txt
for((i=1;i<=5;i++)); do
sed -i 's/ *\([♜♞⁛⁜ॐ卐]\) */\1/g; s/⁛\([^♜♞⁛⁜ॐ卐]*\)⁜\([^♜♞ॐ卐]*\)⁛\1⁜/⁛\1⁜\2/g; ' h_tel1.txt
done
sed -i 's/⁛.⁜♞♜⁛[^⁛⁜♞♜]*⁜//g;s/⁛⁜//g; s/♜♞//g; s/ॐ卐//g; s/⁛\([^♜♞⁛⁜ॐ卐]*\)ం⁜/&⁛\1ము⁜/g;' h_tel1.txt
sed 's/[♜♞ॐ卐]//g;' h_tel1.txt > h_telugu.txt
mkdir shirshika
cp h_ang1.txt  h_eng.txt
#పైన h_ang1.txt అనేది h_eng.txt కి సారూప్యము... అనగా ఆంగ్ల పదాల శీర్షికలు. కానీ కింద h_ang.txt అనేది తెలుగు శీర్షికలకి ఆంగ్ల లిప్యాంతరీకరణ. 
cd shirshika
sed '/[a-zA-Z]/s/^.*$//; s/అ/a/g; s/ఆ/aa/g; s/ఇ/i/g; s/ఈ/ii/g; s/ఉ/u/g; s/ఊ/uu/g; s/ఋ/R/g; s/ౠ/RR/g; s/ఌ/LLi/g; s/ౡ/LLI/g; s/ఎ/e/g; s/ఏ/E/g; s/ఐ/ai/g; s/ఒ/o/g; s/ఓ/O/g; s/ఔ/au/g; s/క/ka/g; s/ఖ/kha/g; s/గ/ga/g; s/ఘ/gha/g; s/ఙ/~Na/g; s/చ/cha/g; s/ఛ/Cha/g; s/జ/ja/g; s/ఝ/jha/g; s/ఞ/~na/g; s/ట/Ta/g; s/ఠ/Tha/g; s/డ/Da/g; s/ఢ/Dha/g; s/ణ/Na/g; s/త/ta/g; s/థ/tha/g; s/ద/da/g; s/ధ/dha/g; s/న/na/g; s/ప/pa/g; s/ఫ/pha/g; s/బ/ba/g; s/భ/bha/g; s/మ/ma/g; s/య/ya/g; s/ర/ra/g; s/ల/la/g; s/వ/va/g; s/శ/sha/g; s/ష/Sha/g; s/స/sa/g; s/హ/ha/g; s/ఱ/~ra/g; s/ళ/La/g; s/ా/⇤aa/g; s/ి/⇤i/g; s/ీ/⇤ii/g; s/ు/⇤u/g; s/ూ/⇤uu/g; s/ృ/⇤R/g; s/ౄ/⇤RR/g; s/ె/⇤e/g; s/ే/⇤E/g; s/ై/⇤ai/g; s/ొ/⇤o/g; s/ో/⇤O/g; s/ౌ/⇤au/g; s/ం/⇤M/g; s/ః/⇤H/g; s/a⇤\([MH]\)/a\1/g; s/a⇤//g; s/a్//g; s/⇤//g; ' ../h_telugu.txt > h_ang.txt
cp h_ang.txt di.txt;cp h_ang.txt pu.txt; cp h_ang.txt dp.txt; cp h_ang.txt ri.txt ; cp h_ang.txt ru.txt; cp h_ang.txt rri.txt ; cp h_ang.txt xa.txt;cp h_ang.txt Du.txt;
sed -i 's/uu\|ii/&☁/g; /☁/!s/^.*$//; s/⁛[^⁜⁛☁]*⁜//g;  s/☁//g; s/uu/oo/g; s/ii/ee/g;' ./di.txt
sed -i 's/M[kKgGcCjJTDNtd]/&☁/g; /☁/!s/^.*$//; s/⁛[^⁜⁛☁]*⁜//g; s/☁//g; s/M\([kKgGcCjJTDNtd]\)/n\1/g;' ./pu.txt
sed 's/M[kKgGcCjJTDNtd]/&☁/g; /☁/!s/^.*$//; s/⁛[^⁜⁛☁]*⁜//g; s/☁//g; s/M\([kKgGcCjJTDNtd]\)/n\1/g;' ./di.txt > dp.txt
sed -i 's/R/&☁/g; /☁/!s/^.*$//; s/⁛[^⁜⁛☁]*⁜//g; s/☁//g; s/RR/◑/g; s/R/✣/g;' ./r*[iu].txt
sed -i 's/◑/RI/g; s/✣/Ri/g;' ./ri.txt
sed -i 's/◑/RU/g; s/✣/Ru/g;' ./ru.txt
sed -i 's/◑/RRI/g; s/✣/RRi/g;' ./rri.txt
sed 's/M[kKgGcCjJTDNtd]/&☁/g; /☁/!s/^.*$//; s/⁛[^⁜⁛☁]*⁜//g; s/☁//g; s/M\([kKgGcCjJTDNtd]\)/n\1/g;' ri.txt > r1p.txt
sed 's/M[kKgGcCjJTDNtd]/&☁/g; /☁/!s/^.*$//; s/⁛[^⁜⁛☁]*⁜//g; s/☁//g; s/M\([kKgGcCjJTDNtd]\)/n\1/g;' ru.txt > r2p.txt
sed 's/M[kKgGcCjJTDNtd]/&☁/g; /☁/!s/^.*$//; s/⁛[^⁜⁛☁]*⁜//g; s/☁//g;  s/M\([kKgGcCjJTDNtd]\)/n\1/g;' rri.txt > r3p.txt
sed -i 's/kSh/&☁/g; /☁/!s/^.*$//; s/⁛[^⁜⁛☁]*⁜//g; s/☁//g;   s/kSh/x/g; ' ./xa.txt
sed -i 's/\([^aeiou]uDu\)⁜/\1☁⁜/g; /☁/!s/^.*$//; s/⁛[^⁜⁛☁]*⁜//g; s/☁//g;   s/\([aeiou]\)uDu⁜/\1a⁜/; ' ./Du.txt
sed 's/అ/अ/g; s/ఆ/आ/g; s/ఇ/इ/g; s/ఈ/ई/g; s/ఉ/उ/g; s/ఊ/ऊ/g; s/ఋ/ऋ/g; s/ౠ/ॠ/g; s/ఎ/ऎ/g; s/ఏ/ए/g; s/ఐ/ऐ/g; s/ఒ/ऒ/g; s/ఓ/ओ/g; s/ఔ/औ/g; s/ం/ं/g; s/ః/ः/g; s/క/क/g; s/ఖ/ख/g; s/గ/ग/g; s/ఘ/घ/g; s/ఙ/ङ/g; s/చ/च/g; s/ఛ/छ/g; s/జ/ज/g; s/ఝ/झ/g; s/ఞ/ञ/g; s/ట/ट/g; s/ఠ/ठ/g; s/డ/ड/g; s/ఢ/ढ/g; s/ణ/ण/g; s/త/त/g; s/థ/थ/g; s/ద/द/g; s/ధ/ध/g; s/న/न/g; s/ప/प/g; s/ఫ/फ/g; s/బ/ब/g; s/భ/भ/g; s/మ/म/g; s/య/य/g; s/ర/र/g; s/ల/ल/g; s/ళ/ळ/g; s/వ/व/g; s/శ/श/g; s/ష/ष/g; s/స/स/g; s/హ/ह/g; s/ా/ा/g; s/ి/ि/g; s/ీ/ी/g; s/ు/ु/g; s/ూ/ू/g; s/ృ/ृ/g; s/ౄ/ॄ/g; s/ె/ॆ/g; s/ే/े/g; s/ై/ै/g; s/ొ/ॊ/g; s/ో/ो/g; s/ౌ/ौ/g; s/౧/१/g; s/౨/२/g; s/౩/३/g; s/౪/४/g; s/౫/५/g; s/౬/६/g; s/౭/७/g; s/౮/८/g; s/౯/९/g; s/౦/०/g;  s/్/్/g; ' ../h_telugu.txt > h_deva.txt
sed 's/అ/ಅ/g; s/ఆ/ಆ/g; s/ఇ/ಇ/g; s/ఈ/ಈ/g; s/ఉ/ಉ/g; s/ఊ/ಊ/g; s/ఋ/ಋ/g; s/ౠ/ೠ/g; s/ఎ/ಎ/g; s/ఏ/ಏ/g; s/ఐ/ಐ/g; s/ఒ/ಒ/g; s/ఓ/ಓ/g; s/ఔ/ಔ/g; s/ం/ಂ/g; s/ః/ಃ/g; s/క/ಕ/g; s/ఖ/ಖ/g; s/గ/ಗ/g; s/ఘ/ಘ/g; s/ఙ/ಙ/g; s/చ/ಚ/g; s/ఛ/ಛ/g; s/జ/ಜ/g; s/ఝ/ಝ/g; s/ఞ/ಞ/g; s/ట/ಟ/g; s/ఠ/ಠ/g; s/డ/ಡ/g; s/ఢ/ಢ/g; s/ణ/ಣ/g; s/త/ತ/g; s/థ/ಥ/g; s/ద/ದ/g; s/ధ/ಧ/g; s/న/ನ/g; s/ప/ಪ/g; s/ఫ/ಫ/g; s/బ/ಬ/g; s/భ/ಭ/g; s/మ/ಮ/g; s/య/ಯ/g; s/ర/ರ/g; s/ల/ಲ/g; s/ళ/ಳ/g; s/వ/ವ/g; s/శ/ಶ/g; s/ష/ಷ/g; s/స/ಸ/g; s/హ/ಹ/g; s/ా/ಾ/g; s/ి/ಿ/g; s/ీ/ೀ/g; s/ు/ು/g; s/ూ/ೂ/g; s/ృ/ೃ/g; s/ౄ/ೄ/g; s/ె/ೆ/g; s/ే/ೇ/g; s/ై/ೈ/g; s/ొ/ೊ/g; s/ో/ೋ/g; s/ౌ/ೌ/g; s/౧/೧/g; s/౨/೨/g; s/౩/೩/g; s/౪/೪/g; s/౫/೫/g; s/౬/೬/g; s/౭/೭/g; s/౮/೮/g; s/౯/೯/g; s/౦/೦/g; s/్/್/g; ' ../h_telugu.txt > h_kannada.txt

paste ../h_eng.txt  ../h_telugu.txt h_deva.txt h_kannada.txt h_ang.txt di.txt pu.txt dp.txt ri.txt ru.txt rri.txt r1p.txt r2p.txt r3p.txt xa.txt Du.txt > heads_raw.txt
sed -i 's/\t//g;' ./heads_raw.txt
sed 's/⁛\([^⁛⁜]*\)ుడు *⁜/&⁛\1⁜/g; s/⁛\([^⁛⁜]*\)\([^ాిీుూృౄెేైొోౌ⁛⁜]\)ము⁜/&⁛\1\2⁜/g; s/⁛\([^⁛⁜]*\)ुडु *⁜/&⁛\1⁜/g; s/⁛\([^⁛⁜]*\)\([^ािीुूृॄॆेैोॊौ⁛⁜]\)मु⁜/&⁛\1\2⁜/g; s/⁛\([^⁛⁜]*\)ುಡು *⁜/&⁛\1⁜/g; s/⁛\([^⁛⁜]*\)\([^ಾಿೀುೂೃೄೆೇೈೊೋೌ⁛⁜]\)ಮು⁜/&⁛\1\2⁜/g;' heads_raw.txt > heads_duprmd.txt 
for((i=1;i<=5;i++)); do
sed -i 's/ *\([⁛⁜]\) */\1/g; s/⁛\([^⁛⁜]*\)⁜\(.*\)⁛\1⁜/⁛\1⁜\2/g; ' heads_duprmd.txt
done
rm heads_raw.txt
cd - 
sed 's/⁜⁜*/⁜/g; s/⁛⁛*/⁛/g; s/(\([^()♜♞⁜⁛]*\)♞\([^()♜♞⁜⁛<>]*\)<span class="padartha">♜/(\1\2/g; s/(\([^()♜♞⁜⁛]*\)♞\([^()♜♞<>⁜⁛]*\)<span class="padartha">♜/(\1\2/g;' mula6.4.html > mula6.5.html
for((i=1;i<=6;i++));do
sed -i 's/(\([^()♜♞⁜⁛]*\)♞\([^()⁜⁛<>]*\)<span class="padartha">♜/(\1\2/g;' mula6.5.html
done
sed -i 's/☚\( *\)<FONT FACE="Times-Roman,[^<>]*>\([^↰⁛]*\)↰/\1\2☚/;' mula6.5.html
sed 's/<span class="vyvhr_span_shirshika">/<div class="vyvhr_pada">/; s/<p>/<div class="vyvhr_tera"><div class="vyvhr_patra">/; s/↷/<\/div><\/div>/; '  mula6.5.html > mula7.1.html && rm mula6.5.html
for((i=1; i<=25862; i++));do
p=$((i-1));
q=$((i+1));
k=$((p/32+1));
j=$((k-1));
l=$((k+1));
r=$((i%32));
echo \<div class="☁vyvhr_pnum"☁\>\<a class="☁vyvhr_pglink"☁ href="☁_vyvhr_pn$j"☁\>↶\</a\>\<a class="☁vyvhr_pglink"☁ href="☁_vyvhr_pn$k"☁\>p$k\</a\>\<a class="☁vyvhr_pglink"☁ href="☁_vyvhr_pn$l"☁\>↷\</a\>\<br\>\<a class="☁vyvhr_pglink"☁ href="☁_vyvhr@$p"☁\>«\</a\>\<span class="☁vyvhr_wnum"☁\>పదం $r\</span\>\<a class="☁vyvhr_pglink"☁ href="☁_vyvhr@$q"☁\>»\</a\>\</div\>\<div class="☁vyvhr_floatclr"☁ style="☁clear:left;"☁\>\<hr class="☁vyvhr_titlesepr"☁\>\</div\> >> shirshika_p2.txt
done
sed -i 's/☁/"/g; ' shirshika_p2.txt
sed 's/♝.*$/♝/;' mula7.1.html > mula7_p1.html
sed 's/^[^♝]*♝//; s/↶/<BR>/g;' mula7.1.html > mula7_p3.html
paste mula7_p1.html shirshika_p2.txt mula7_p3.html |sed 's/\t//g;' > mula7.2.html && rm shirshika_p2.txt mula7_p1.html mula7_p3.html 
sed 's/☚/<\/div>/; s/♝/<\/div>/; s/♛/<div class="vyvhr_bsbg">/g; s/⁛/<div class="vyvhr_nanartha">/g; s/♜//g; s/♞/<\/span>/g; s/❄/<\/a>/g; s/⁜/<\/div>/g; s/↰/<\/div>/g; s/☁/<\/div>/g; s/$/<\/div>/;' mula7.2.html > mula7.3.html && rm mula7.2.html
sed -i 's/✔/<B>/g; s/◑/<\/B>/g; s/☆/<I>/g; s/☀/<\/I>/g;s/☚/<\/span>/g; s/\(<span class="vyvhr_span_bsbg"><I>\) *n *<\/I>/\1నామవాచకం <\/I>/g; s/\(<span class="vyvhr_span_bsbg"><I>\) *v *<\/I>/\1క్రియ <\/I>/g; s/\(<span class="vyvhr_span_bsbg"><I>\) *adj *<\/I>/\1విశేషణం <\/I>/g; s/\(<span class="vyvhr_span_bsbg"><I>\) *adv *<\/I>/\1క్రియా విశేషణం <\/I>/g; s/\(<span class="vyvhr_span_bsbg"><I>\) *(pl) *<\/I>/\1(బహువచనం) <\/I>/g; s/\(<span class="vyvhr_span_bsbg"><I>\) *prep *<\/I>/\1ఉపసర్గ <\/I>/g; ' ./mula7.3.html
cd shirshika
for((i=1; i<=25862; i++));do
p=$((i-1));
q=$((i+1));
k=$((p/32+1));
j=$((k-1));
l=$((k+1));
r=$((i%32));
echo ⁛_vyvhr@$i⁜⁛_vyvhr_pn$k⁜ >> gurtulu.txt
done
paste heads_duprmd.txt gurtulu.txt |sed 's/\t//;' > heads_gurtulu.txt
sed 's/⁜⁛/|/g; s/[⁜⁛]//g;' heads_gurtulu.txt > heads_siddhanta.txt
cd -
sed 's/^/\n\n/;' mula7.3.html|sed '1d' > tmp1 && sed 's/$/\n\n/;' shirshika/heads_siddhanta.txt > tmp2 && paste tmp1 tmp2|sed 's/^\t//; s/\t$//; ' > paribhashika_nighantuvu.babylon && rm mula7.3.html
rm -r shirshika
sed -i '2~3s/^/<style>div.vyvhr_tera{font-family:Verdana, "Lucida Sans Unicode", sans-serif;margin: 0em;line-height:1.5em;}div.vyvhr_shirshika{max-width:20em;height:3em;float:left;text-align:left;}div.vyvhr_patra{background: #ccc193;border-radius:5px;margin:0 auto 0 auto;padding: 1em;max-width:55.8em;color:#1b1205;font-size: 1em;}div.vyvhr_pnum{max-width:10em;height:3em;float:right;text-align:right;}div.vyvhr_pada{border:1px solid black;min-width:7em;padding:0.3em;}div.vyvhr_floatclr{clear:left;}a.vyvhr_a_pada:link,a.vyvhr_a_pada:visited,a.vyvhr_pada,a.vyvhr_pglink{color: #1b1205; text-decoration: none;}a.vyvhr_a_pada:hover{text-decoration: underline;color:#9b0606;}a.vyvhr_pglink:hover{text-decoration: underline;}span.vyvhr_span_bsbg{color: brown;}div.vyvhr_vivaraNa{padding-top:0.1em;}div.vyvhr_bsbg{margin-bottom:1.0em;}div.vyvhr_nanartha::before{content:"• ";}<\/style>/; 1s/^/\n#stripmethod=keep\n#sametypesequence=h\n#bookname=పారిభాషిక పదకోశం\n#వందనాలు : అమ్మకి\n\n/;' paribhashika_nighantuvu_tag_organised.babylon

sed 's/<\/span>/◑/g; s/<span class="padartha">\([^◑]*\)◑/\1/g; s/◑/<\/span>/g; s/<div class="vyvhr_bsbg">/◑/g; s/<div class="vyvhr_vivaraNa">\([^◑]*\)<\/div>◑/\1◑/g; /vyvhr_vivaraNa/s/<\/div> *$//; s/<div class="vyvhr_vivaraNa">//g; s/◑/<div class="vyvhr_bsbg">/g; ' paribhashika_nighantuvu_tag_organised.babylon > paribhashika_nighantuvu.babylon
sed -i 's/<style>.*<\/style>/<style>div.vyvhr_tera{ font-family:Verdana, "Lucida Sans Unicode", sans-serif; margin: 0em; line-height:1.5em; color:black; } div.vyvhr_patra{ margin:0 auto 0 auto; padding: 1em; max-width:55.8em; font-size: 1em; } a.vyvhr_a_pada:link,a.vyvhr_a_pada:visited{ text-decoration: none; color:#1A163A; } a.vyvhr_a_pada:hover{ text-decoration: underline; color:#1A163A; } span.vyvhr_span_bsbg{ color:#133b5a ; } div.vyvhr_bsbg{ margin-bottom:1.0em; } div.vyvhr_nanartha::before{ content:"• "; } h2.vyvhr_h2{ margin:0; color:#133b5a; padding-bottom:0.1em;}<\/style>/;' ./*3.babylon
sed -i 's/<div class="vyvhr_floatclr/◑/g; s/<div class="vyvhr_pnum">[^◑]*◑/<div class="vyvhr_floatclr/;' paribhashika_nighantuvu.babylon
sed -i 's/<div class="vyvhr_bsbg">/◑/; /<div class="vyvhr_bsbg">/!s/span.vyvhr_span_bsbg{ color:#133b5a ; } div.vyvhr_bsbg{ margin-bottom:1.0em; }\| div.vyvhr_bsbg{ margin-bottom:1.0em; } \|<\/div> *$//g; /<div class="vyvhr_bsbg">/!s/◑//;s/◑/<div class="vyvhr_bsbg">/g; ' paribhashika_nighantuvu.babylon
sed -i.bk '/class="vyvhr_span_bsbg"/!s/span.vyvhr_span_bsbg{ color:#133b5a ; }//; s/<div class="vyvhr_shirshika">//; s/<div class="vyvhr_pada">/<h2 class="vyvhr_h2">/; s/<\/div><\/div><div class="vyvhr_float/<\/h2><div class="vyvhr_float/; s/<div class="vyvhr_floatclr" style="clear:left;">//; s/<hr class="vyvhr_titlesepr"><\/div>/<hr>/; ' paribhashika_nighantuvu.babylon

