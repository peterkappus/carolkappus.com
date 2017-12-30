https://github.com/peterkappus/carolkappus.com

### Instructions

Install stasis gem

	gem install stasis

Clone and cd into directory

	git clone https://github.com/peterkappus/carolkappus.com.git
	cd carolkappus.com
	stasis -d

Now find generated static website in public subfolder.

### Docker Instructions

- Install docker...
- Run `docker-compose up` (should build and re-build files as required)

### Compiling the custom sass
- Run `docker-compose run app bash`
- Inside the container run `bundle && sass -w css/custom-styles.css.sass:css/custom-styles.css`
- TODO: make this simpler and more automatic...

## TODO

- Add a site map. Can this be auto generated?
- Consider porting this site to Hugo or similar.


### Making paypal buttons:
- Go [here](https://www.paypal.com/bm/cgi-bin/webscr?cmd=_singleitem-intro-outside).
- Scroll to the bottom and click "Create an HTML Form"
- Enter book name, price, and shipping. Click "Create"
- Copy code and put into store.html.slim
