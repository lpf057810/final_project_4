report.html: report.Rmd code/render_report.R 
	Rscript code/render_report.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f report.html
