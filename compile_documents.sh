cd tex
for file in *.tex; 
    do 
    pdflatex -output-directory ../output $file;
    pdflatex -output-directory ../docs $file;
done

cd ../output
for file in *.pdf;
    do latexmk -c $file;
done

cd ../docs
for file in *.pdf;
    do latexmk -c $file;
done