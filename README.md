# Carol Kappus website
A static site for my mom.

## Setup using Docker

- Install docker...
- Run `docker-compose up` (should build and re-build files as required)


### Local Setup
Use this if docker doesn't work for you

Install stasis gem

	`gem install stasis`

Clone and cd into directory

	```git clone https://github.com/peterkappus/carolkappus.com.git
	cd carolkappus.com
	stasis -d
```

Now find generated static website in public subfolder and open it.

## Deployment
Install s3cmd
run `s3cmd sync -P public/ s3://bucketname/`
(NOTE: the -P flag makes the files public)
If you accidentally synch without this flag you can run `s3cmd setacl -Pr s3://bucketname/` to recursively make everyhting public
TROUBLESHOOTING: If you can't get s3cmd setup, try a network that doesn't need a proxy.

### Compiling the custom sass
- Run `docker-compose run app bash`
- Inside the container run `bundle && sass -w css/custom-styles.css.sass:css/custom-styles.css`
- TODO: make this simpler and more automatic...

### Watermarking images
Use imagemagick:

`convert -size 400x200 xc:none -font Arial -pointsize 25 -kerning 1 -gravity center -fill black -annotate 330x330+0+0 "SAMPLE" -fill white -annotate 330x330+2+2  "SAMPLE" WATERMARK_FILE.png`

`composite -dissolve 20% -tile WATERMARK_FILE.png [INFILE] [OUTFILE]`

## TODO

- Add a site map. Can this be auto generated?
- Consider porting this site to Hugo or similar.


### Making book covers:
Take a screenshot of the PDF.
Copy the resulting PNG from your deksop to `img/book_covers`
Open Terminal...
`convert <src.png> -resize 517x <out.jpg>`


### Making paypal buttons:
- Go [here](https://www.paypal.com/bm/cgi-bin/webscr?cmd=_singleitem-intro-outside).
- Scroll to the bottom and click "Create an HTML Form"
- Enter book name, price, and shipping. Click "Create"
- Copy code and put into store.html.slim
