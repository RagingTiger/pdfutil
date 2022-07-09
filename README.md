# TL;DR
Collection of `PDF` processing tools

## Docker Image
Here is an example of how to use the `Docker` image to get a command prompt and run commands:
```
docker run \
         --rm \
         -v /PATH/TO/YOUR/PDFs:/pdfutil \
         -it ghcr.io/ragingtiger/pdfutil:master
```
Where `/PATH/TO/YOUR/PDF` is clearly meant to be the `user-specific` path to the
directory containing your PDF(s).

You could also execute `pdftitle` in the *Docker run* command:
```
docker run \
         --rm \
         -v /PATH/TO/YOUR/PDFs:/pdfutil \
         -it ghcr.io/ragingtiger/pdfutil:master \
           pdftitle -p your_untitled_pdf_file.pdf
```

## Parallel
The *Docker image* also has [GNU-Parallel](https://www.gnu.org/software/parallel/) installed and can be used as follows:
```
docker run \
         --rm \
         -v /PATH/TO/YOUR/PDFs:/pdfutil \
         -it ghcr.io/ragingtiger/pdfutil:master \
           ls *.pdf | parallel --eta 'echo {} $(pdftitle -p {}) >> rename_list.txt'
```
This command will create a file with two columns: the pdf file name, and the pdf title (if it can be found). Then you can edit the `rename_list.txt` file
removing any unwanted results, and simply run:
```
cat rename_list.txt | parallel 'mv {}'
```

## Examples
**NOTE**: The following examples all assume usage of the above `Docker` image.

### PDF Title
Using the `Python` library [`pdftitle`](https://github.com/metebalci/pdftitle)
we can extract the `title` of the `PDF` a follows:
```
$ pdftitle -p your_untitled_pdf_file.pdf
```
