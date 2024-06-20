function optiall
    fd -e jpg -e jpeg -x jpegoptim
    fd -e mp3 -x mp3packer \; -x mv '{.}'-vbr.mp3 {}
    fd -e pdf -x qpdf --stream-data=compress --replace-input --compress-streams=y --recompress-flate --compression-level=9 --optimize-images {}
    fd -e png -x oxipng \; -x advpng -z3
    fd -t f -x advdef -z3
    fd -t f -x advzip -z3
end
