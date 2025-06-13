function undeflate
    fd -e jpg -e jpeg -x jpegoptim
    fd -e png -x oxipng \; -x advpng -z0
    fd -t f -x advzip -z0
    fd -t f -x advdef -z0
    fd -e pdf -x qpdf --stream-data=uncompress --replace-input --compress-streams=n --recompress-flate --compression-level=0 --optimize-images {}
    fd -e \~qpdf-orig -x rm
end
