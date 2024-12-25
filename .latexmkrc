$latex = 'lualatex';
$biber = 'biber';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex -U %O -o %D %S';
$pdf_mode = 3; 
$bibtex_use = 2;

$ENV{TZ} = 'Asia/Tokyo';
$ENV{OPENTYPEFONTS} = './fonts//:';
$ENV{TTFONTS} = './fonts/:';
$ENV{'TEXINPUTS'}='./styles/:' . $ENV{'TEXINPUTS'};

$clean_ext = "dvi run.xml synctex.gz";
