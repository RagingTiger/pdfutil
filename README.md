# tl;dr
Collection of `PDF` processing tools

## Docker Image
Here is an example of how to use the `Docker` image:
```
$ docker run --rm -v /PATH/TO/YOUR/PDF:/pdfutil -it tigerj/pdfutil
```
Where `/PATH/TO/YOUR/PDF` is clearly meant to be the `user-specific` path to the
directory containing your PDF(s).

## Examples
**NOTE**: The following examples all assume usage of the above `Docker` image.

### PDF Title
Using the `Python` library [`pdftitle`](https://github.com/metebalci/pdftitle)
we can extract the `title` of the `PDF` a follows:
```
$ pdftitle -p your_untitled_pdf_file.pdf
```
