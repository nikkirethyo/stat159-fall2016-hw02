DIR=/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw02/

all: report.pdf eda-output.txt regression.Rdata

data: Advertising.csv
	cd data; curl -o http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

report.pdf: $(DIR)report/report.Rmd $(DIR)data/regression.Rdata $(DIR)images/scatterplot-tv-sales.png
	cd report; Rscript -e 'library(rmarkdown); rmarkdown::render("report.Rmd", "pdf_document")'

eda-output.txt: $(DIR)code/eda-script.R $(DIR)data/Advertising.csv
	cd code; Rscript eda-script.R

regression.Rdata: $(DIR)code/regression-script.R $(DIR)data/Advertising.csv
	cd code; Rscript regression-script.R

clean: 
	cd report; rm report.pdf
