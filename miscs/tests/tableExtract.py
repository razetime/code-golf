from tabula import read_pdf
#Uses stabula to read tables from a pdf
df=read_pdf("<Insert pdf name here>", output_format="json", pages="all",output_path="WHO-data.json")
df