function reflow
    argparse p/pdf -- $argv
    parallel mutool convert -O preserve-images -o {.}.xhtml {} ::: $argv
    if set -q _flag_pdf
        parallel mutool convert -o {.}_reflow.pdf {.}.xhtml ::: $argv
    else
        parallel pandoc {.}.xhtml -o {.}.epub ::: $argv
    end
    parallel rm {.}.xhtml ::: $argv
end
